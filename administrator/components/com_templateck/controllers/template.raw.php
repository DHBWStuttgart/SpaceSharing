<?php

/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// No direct access
defined('_JEXEC') or die;
jimport('joomla.application.component.controllerform');

require_once JPATH_COMPONENT . '/controller.php';

/**
 * Template controller class.
 */
class TemplateckControllerTemplate extends TemplateckController {

	/**
	 * Method to check out an item for editing and redirect to the edit form.
	 *
	 * @since	1.6
	 */
	public function edit() {
		$app = JFactory::getApplication();

		// Get the previous edit id (if any) and the current edit id.
		$previousId = (int) $app->getUserState('com_templateck.edit.template.id');
		$editId = (int) $app->input->get('id', null, '', 'array');
		// Set the user id for the user to edit in the session.
		$app->setUserState('com_templateck.edit.template.id', $editId);
		// Get the model.
		$model = $this->getModel('Template', 'TemplateckModel');

		// Check out the item
		if ($editId) {
			$model->checkout($editId);
		}

		// Check in the previous user.
		if ($previousId) {
			$model->checkin($previousId);
		}

		$template = $app->input->get('template', '') ? '&template=' . $app->input->get('template', '') : '';

		// Redirect to the edit screen.
		$this->setRedirect('index.php?option=com_templateck&view=template&layout=edit&format=raw&id=' . $editId, false);
	}

	/**
	 * Method to save a user's profile data.
	 *
	 * @return	void
	 * @since	1.6
	 */
	public function save() {
		// Check for request forgeries.
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

		// Initialise variables.
		$app = JFactory::getApplication();
		$model = $this->getModel('Template', 'TemplateckModel');

		// Get the user data.
		$data = $app->input->getArray($_POST);

		// Validate the posted data.
		$form = $model->getForm();
		if (!$form) {
			JError::raiseError(500, $model->getError());
			return false;
		}

		// Validate the posted data.
		$data = $model->validate($form, $data);

		// Check for errors.
		if ($data === false) {
			// Get the validation messages.
			$errors = $model->getErrors();

			// Push up to three validation messages out to the user.
			for ($i = 0, $n = count($errors); $i < $n && $i < 3; $i++) {
				if ($errors[$i] instanceof Exception) {
					$app->enqueueMessage($errors[$i]->getMessage(), 'warning');
				} else {
					$app->enqueueMessage($errors[$i], 'warning');
				}
			}

			// Save the data in the session.
			$app->setUserState('com_templateck.edit.template.data', $data);

			// Redirect back to the edit screen.
			$id = (int) $app->getUserState('com_templateck.edit.template.id');
			$this->setRedirect('index.php?option=com_templateck&view=template&layout=edit&format=raw&id=' . $id, false);
			return false;
		}

		// Attempt to save the data.
		$return = $model->save($data);

		// Check for errors.
		if ($return === false) {
			// Save the data in the session.
			$app->setUserState('com_templateck.edit.template.data', $data);

			// Redirect back to the edit screen.
			$id = (int) $app->getUserState('com_templateck.edit.template.id');
			$app->enqueueMessage(JText::sprintf('Save failed', $model->getError()), 'warning');
			$this->setRedirect('index.php?option=com_templateck&view=template&task=template.edit&layout=edit&format=raw&id=' . $id, false);
			return false;
		}


		// Check in the profile.
		if ($return) {
			$model->checkin($return);
		}

		// Clear the profile id from the session.
		$app->setUserState('com_templateck.edit.template.id', null);

		// Redirect to the list screen.
		$app->enqueueMessage(JText::_('Item saved successfully'));
		$this->setRedirect('index.php?option=com_templateck&view=template&task=template.edit&layout=edit&format=raw&id=' . $return, false);

		// Flush the data from the session.
		$app->setUserState('com_templateck.edit.template.data', null);
	}

	function cancel() {
		//Redirect back to list
		$this->setRedirect('index.php?option=com_templateck&view=templates', false);
		// }
	}
}
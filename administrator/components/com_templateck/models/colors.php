<?php
/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */

defined('_JEXEC') or die;
jimport('joomla.application.component.modellist');

class TemplateckModelColors extends JModelList
{
	protected $context = 'com_templateck.colors';

	public $pagination;
	public $items;
	private $xmldata;

	/**
	 * Constructor.
	 *
	 * @param   array  $config  An optional associative array of configuration settings.
	 *
	 * @see     JController
	 * @since   1.6
	 */
	public function __construct($config = array())
	{
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'a.id',
				'title', 'a.title',
				'alias', 'a.alias',
				'published', 'a.published',
				'access', 'a.access', 'access_level',
				'language', 'a.language',
				'checked_out', 'a.checked_out',
				'checked_out_time', 'a.checked_out_time',
				'created_time', 'a.created_time',
				'created_user_id', 'a.created_user_id',
				'lft', 'a.lft',
				'rgt', 'a.rgt',
				'level', 'a.level',
				'path', 'a.path',
				'tag'
			);
		}

		parent::__construct($config);
	}
	
	public function getXmlItems() {
		if (empty($this->xmldata)) {
			$url = $this->getColorsUrl();
			// var_dump(file_get_contents($url));die;
			$this->xmldata = new SimpleXMLElement(file_get_contents($url));
			
		}
		
		return $this->xmldata;
	}
	
	private function getColorsUrl() {
	$app = JFactory::getApplication();
		$url = 'http://www.colourlovers.com/api/palettes';
		if ($this->state->get('filter.sortTable') == 'top' || $this->state->get('filter.sortTable') == 'new' || $this->state->get('filter.sortTable') == 'random')
		{
			$url .= '/' . $this->state->get('filter.sortTable');
		} else {
			$url .= $this->state->get('filter.sortTable') ? $this->urlChar($url) . 'orderCol=' . $this->state->get('filter.sortTable') : '';
			$url .= $this->state->get('filter.search') ? $this->urlChar($url) . 'keywords=' . $this->state->get('filter.search') : '';
			$url .= $this->state->get('filter.searchcolor') ? $this->urlChar($url) . 'hex=' . $this->state->get('filter.searchcolor') : '';
		}
			$url .= $this->state->get('list.limit') ? $this->urlChar($url) . 'numResults=' . $this->state->get('list.limit') : '';
			$url .= $this->state->get('list.limitstart') ? $this->urlChar($url) . 'resultOffset=' . $this->state->get('list.limitstart') : '';
			$url .= $this->state->get('list.directionTable') ? $this->urlChar($url) . 'sortBy=' . $this->state->get('list.directionTable') : '';
		// $url .= '&format=json';
		// var_dump($url);
		return $url;
	}
	
	public function getItems() {
		$this->getXmlItems();
		return $this->xmldata->palette;
		
		$this->items = json_decode(file_get_contents($url));

		return $this->items;
	}
	
	private function urlChar($url) {
		return (stristr($url, '?') ? '&' : '?');
	}
	
	/**
	 * Method to get model state variables
	 *
	 * @param   string  $property  Optional parameter name
	 * @param   mixed   $default   Optional default value
	 *
	 * @return  object  The property where specified, the state object where omitted
	 *
	 * @since   12.2
	 */
	public function getState($property = null, $default = null)
	{
		$this->populateState();

		return $property === null ? $this->state : $this->state->get($property, $default);
	}
	
	/**
	 * Method to set model state variables
	 *
	 * @param   string  $property  The name of the property.
	 * @param   mixed   $value     The value of the property to set or null.
	 *
	 * @return  mixed  The previous value of the property or null if not set.
	 *
	 * @since   12.2
	 */
	public function setState($property, $value = null)
	{
		return $this->state->set($property, $value);
	}
	
	/**
	 * Method to auto-populate the model state.
	 *
	 * This method should only be called once per instantiation and is designed
	 * to be called on the first call to the getState() method unless the model
	 * configuration flag to ignore the request is set.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @param   string  $ordering   An optional ordering field.
	 * @param   string  $direction  An optional direction (asc|desc).
	 *
	 * @return  void
	 *
	 * @since   12.2
	 */
	protected function populateState($ordering = null, $direction = null)
	{
		$app = JFactory::getApplication();

		$this->setState('filter.sortTable', $this->getUserStateFromRequest($this->context.'.sortTable', 'sortTable'));
		
		$this->setState('filter.search', $this->getUserStateFromRequest($this->context . '.search', 'filter_search'));
		$this->setState('filter.searchcolor', $this->getUserStateFromRequest($this->context . '.searchcolor', 'filter_searchcolor'));
		// $this->setState('filter_id', $this->getUserStateFromRequest($this->context . '.filter_id', 'filter_id', 0));
		$this->setState('list.limit', $this->getUserStateFromRequest($this->context.'.limit', 'limit', $app->getCfg('list_limit'), 'int' ));
		$this->setState('list.limitstart', $this->getUserStateFromRequest($this->context.'.limitstart', 'limitstart', 0, 'int' ));
		$this->setState('list.directionTable', $this->getUserStateFromRequest($this->context.'.directionTable', 'directionTable'));
		// List state information.
		// $ordering = $app->getUserStateFromRequest($this->context.'.filter_order', 'filter_order', "a.category_ordering", 'cmd');
		// $direction = $app->getUserStateFromRequest($this->context.'.filter_order_Dir', 'filter_order_Dir', "asc", 'cmd');
		
		// If the context is set, assume that stateful lists are used.
		if ($this->context)
		{
			// $app = JFactory::getApplication();

			// Receive & set filters
			// if ($filters = $app->getUserStateFromRequest($this->context . '.filter', 'filter', array(), 'array'))
			// {
				// foreach ($filters as $name => $value)
				// {
					// $this->setState('filter.' . $name, $value);
				// }
			// }

			$limit = 0;

			// Receive & set list options
			if ($list = $app->getUserStateFromRequest($this->context . '.list', 'list', array(), 'array'))
			{
				foreach ($list as $name => $value)
				{
					// Extra validations
					switch ($name)
					{
						case 'fullordering':
							$orderingParts = explode(' ', $value);

							if (count($orderingParts) >= 2)
							{
								// Latest part will be considered the direction
								$fullDirection = end($orderingParts);

								if (in_array(strtoupper($fullDirection), array('ASC', 'DESC', '')))
								{
									$this->setState('list.direction', $fullDirection);
								}

								unset($orderingParts[count($orderingParts) - 1]);

								// The rest will be the ordering
								$fullOrdering = implode(' ', $orderingParts);

								if (in_array($fullOrdering, $this->filter_fields))
								{
									$this->setState('list.ordering', $fullOrdering);
								}
							}
							else
							{
								$this->setState('list.ordering', $ordering);
								$this->setState('list.direction', $direction);
							}
							break;

						case 'ordering':
							if (!in_array($value, $this->filter_fields))
							{
								$value = $ordering;
							}
							break;

						case 'direction':
							if (!in_array(strtoupper($value), array('ASC', 'DESC', '')))
							{
								$value = $direction;
							}
							break;

						case 'limit':
							$limit = $value;
							break;

						// Just to keep the default case
						default:
							$value = $value;
							break;
					}

					$this->setState('list.' . $name, $value);
				}
			}
			else
			// Keep B/C for components previous to jform forms for filters
			{
				// Pre-fill the limits
				$limit = $app->getUserStateFromRequest('global.list.limit', 'limit', $app->getCfg('list_limit'), 'uint');
				$this->setState('list.limit', $limit);

				// Check if the ordering field is in the white list, otherwise use the incoming value.
				$value = $app->getUserStateFromRequest($this->context . '.ordercol', 'filter_order', $ordering);

				if (!in_array($value, $this->filter_fields))
				{
					$value = $ordering;
					$app->setUserState($this->context . '.ordercol', $value);
				}

				$this->setState('list.ordering', $value);

				// Check if the ordering direction is valid, otherwise use the incoming value.
				$value = $app->getUserStateFromRequest($this->context . '.orderdirn', 'filter_order_Dir', $direction);

				if (!in_array(strtoupper($value), array('ASC', 'DESC', '')))
				{
					$value = $direction;
					$app->setUserState($this->context . '.orderdirn', $value);
				}

				$this->setState('list.direction', $value);
			}

			// Support old ordering field
			$oldOrdering = $app->input->get('filter_order');

			if (!empty($oldOrdering) && in_array($value, $this->filter_fields))
			{
				$this->setState('list.ordering', $oldOrdering);
			}

			// Support old direction field
			$oldDirection = $app->input->get('filter_order_Dir');

			if (!empty($oldDirection) && in_array(strtoupper($oldDirection), array('ASC', 'DESC', '')))
			{
				$this->setState('list.direction', $oldDirection);
			}

			$value = $app->getUserStateFromRequest($this->context . '.limitstart', 'limitstart', 0);
			$limitstart = ($limit != 0 ? (floor($value / $limit) * $limit) : 0);
			$this->setState('list.start', $limitstart);
		}
		else
		{
			$this->setState('list.start', 0);
			$this->setState('list.limit', 0);
		}
	}
	
	/**
	 * Method to get a JDatabaseQuery object for retrieving the data set from a database.
	 *
	 * @return  JDatabaseQuery   A JDatabaseQuery object to retrieve the data set.
	 *
	 * @since   12.2
	 */
	protected function getListQuery()
	{
		$db = $this->getDbo();
		$query = $db->getQuery(true);

		return $query;
	}

	/**
	 * Method to get a JPagination object for the data set.
	 *
	 * @return  JPagination  A JPagination object for the data set.
	 *
	 * @since   12.2
	 */
	public function getPagination()
	{
		$app = JFactory::getApplication();
		jimport('joomla.html.pagination');
		$limit = $this->state->get('list.limit');
        $limitstart = $this->state->get('list.limitstart');
        $this->pagination = new JPagination($this->xmldata['totalResults'], $limitstart, $limit);

		return $this->pagination;
	}

	/**
	 * Method to get a store id based on the model configuration state.
	 *
	 * This is necessary because the model is used by the component and
	 * different modules that might need different sets of data or different
	 * ordering requirements.
	 *
	 * @param   string  $id  An identifier string to generate the store id.
	 *
	 * @return  string  A store id.
	 *
	 * @since   12.2
	 */
	protected function getStoreId($id = '')
	{
		// Add the list state to the store id.
		$id .= ':' . $this->getState('list.start');
		$id .= ':' . $this->getState('list.limit');
		$id .= ':' . $this->getState('list.ordering');
		$id .= ':' . $this->getState('list.direction');

		return md5($this->context . ':' . $id);
	}
}

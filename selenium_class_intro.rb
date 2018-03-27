require 'selenium-webdriver'

class SeleniumQATools
  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME = 'firstname'
  LAST_NAME = 'lastname'
  CHECKBOX = 'sex-0'
  EXPERIENCE = 'exp-3'
  DATEPICKER = 'datepicker'
  PROFESSION = 'profession-1'
  PHOTO = 'photo'


  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    visit_practice_form
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_first_name(text)
    @chrome_driver.find_element(:name, FIRST_NAME).send_keys(text)
  end

  def input_last_name(text)
    @chrome_driver.find_element(:name, LAST_NAME).send_keys(text)
  end

  def input_sex(sex)
    @chrome_driver.find_element(:id, sex).click
  end

  def input_experience(experience)
    @chrome_driver.find_element(:id, experience).click
  end

  def input_datepicker(date)
    @chrome_driver.find_element(:id, DATEPICKER).send_keys(date)
  end

  def input_profession(profession)
    @chrome_driver.find_element(:id, profession).click
  end

  def input_photo(file)
    @chrome_driver.find_element(:id, PHOTO).send_keys(file)
  end

  def download(text)
    @chrome_driver.find_element(:link_text, text).click
  end

  def get_tool(tool)
    @chrome_driver.find_element(:id, tool).click

  end

  def select_continent
    select_list = @chrome_driver.find_element(:id, 'continents')
    options = select_list.find_elements(tag_name: 'option')

    options.each do |option|
      puts option.attribute('value')
      option.click
    end
  end

  def select_selenium_command
    select_list = @chrome_driver.find_element(:id, 'selenium_commands').click
    options = select_list.find_elements(tag_name: 'option')

    options.each do |option|
      puts option.attribute('value')
      option.click
    end
  end

  def submit
    @chrome_driver.find_element(:id, 'submit').click
    sleep 5
  end

  def get_responses
    puts @chrome_driver.find_element(:name, FIRST_NAME)['value']
    puts @chrome_driver.find_element(:name, LAST_NAME)['value']
    puts @chrome_driver.find_element(:id, )['value']
  end
end

x = SeleniumQATools.new
x.input_first_name('LOLTEST')
x.input_last_name('LOLTEST')
x.input_sex('sex-0')
x.input_experience('exp-2')
x.input_datepicker('29/03/18')
x.input_profession('exp-2')
x.input_photo('/Users/tech-a20/Downloads/country_data.csv')
x.download('Test File to Download')
x.get_tool('tool-2')
x.select_continent
x.select_selenium_command
x.submit

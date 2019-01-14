class CoubouController < ApplicationController
  def index
    body = {
      'Command'   => [0x2318].pack('U'),
      'Control'   => [0x2303].pack('U'),
      'Option'    => [0x2325].pack('U'),
      'Shift'     => [0x21E7].pack('U'),
      'Caps Lock' => [0x21EA].pack('U'),
      'Escape'    => [0x238B].pack('U'),
    }
    render json: { message: body }, status: :ok
  end
end

class TextMessagesController < ApplicationController
  # GET /text_messages
  # GET /text_messages.json
  def index
    @text_messages = TextMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @text_messages }
    end
  end

  # GET /text_messages/1
  # GET /text_messages/1.json
  def show
    @text_message = TextMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text_message }
    end
  end

  # GET /text_messages/new
  # GET /text_messages/new.json
  def new
    @text_message = TextMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text_message }
    end
  end

  # GET /text_messages/1/edit
  def edit
    @text_message = TextMessage.find(params[:id])
  end

  # POST /text_messages
  # POST /text_messages.json
  def send_text_message(text_message)
    number_to_send_to = text_message.receiver
    message = text_message.content
    twilio_sid = "AC50070372767bdf26a090b08007bba07f"
    twilio_token = "8ae1cdbb08d55b99cab34174c3cd8bbb"
    twilio_phone_number = "2245209581"
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => message
    )
    
  end

  def create
    puts "the numbers"
    puts "#{params[:receiver]}"
    the_array = params[:receiver]
    the_array.each do |this|
      @new_text_message = TextMessage.new
      @new_text_message.content = params["text_message"]["content"]
      @new_text_message.receiver = this
      send_text_message(@new_text_message)
    end
    @text_message = TextMessage.new(params[:text_message])
    @text_message.name = current_user.name
    @text_message.receiver = params[:receiver].first
    respond_to do |format|
      if @text_message.save
        phone_number = @text_message.receiver
        send_text_message(@text_message)
        format.html { redirect_to @text_message, notice: 'Text message was successfully created.' }
        format.json { render json: @text_message, status: :created, location: @text_message }
      else
        format.html { render action: "new" }
        format.json { render json: @text_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /text_messages/1
  # PUT /text_messages/1.json
  def update
    @text_message = TextMessage.find(params[:id])

    respond_to do |format|
      if @text_message.update_attributes(params[:text_message])
        format.html { redirect_to @text_message, notice: 'Text message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_messages/1
  # DELETE /text_messages/1.json
  def destroy
    @text_message = TextMessage.find(params[:id])
    @text_message.destroy

    respond_to do |format|
      format.html { redirect_to text_messages_url }
      format.json { head :no_content }
    end
  end
end

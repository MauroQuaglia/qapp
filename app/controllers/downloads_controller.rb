class DownloadsController < ApplicationController

  def index
    name, extension = permitted_params[:name], permitted_params[:extension]

    file = Rails.root.join('db', 'data', "#{name}.#{extension}")
    if !File.exist?(file)
      return not_found
    end

    send_file(file, type: "application/#{extension}")
  end

  private

  def permitted_params
    params.permit(:name, :extension)
  end

end

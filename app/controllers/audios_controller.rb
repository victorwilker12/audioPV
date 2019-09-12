class AudiosController < InheritedResources::Base
 skip_before_action :verify_authenticity_token
    private

    def audio_params
      params.require(:audio).permit(:name, :author, :audio)
    end

end

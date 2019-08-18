class AudiosController < InheritedResources::Base

  private

    def audio_params
      params.require(:audio).permit(:name, :author, :audio)
    end

end

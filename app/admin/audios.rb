ActiveAdmin.register Audio do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :author, :audio
  actions :all

  form :html => { :enctype => "multipart/form-data" }, title: 'Novo produto' do |f|
   f.inputs 'CRIAR NOVO AUDIO' do
      f.input :name, label: "Título"
      f.input :author, label: "Descrição"
      f.input :audio, as: :file ,label: "Audio"
    end
    f.actions

  end


  index do
    selectable_column
    column :name
#    column "audio" do |f|
#      audio_tag f.audio
#    end
    column :created_at, null: false
    actions
  end


  
end

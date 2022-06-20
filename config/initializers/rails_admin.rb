RailsAdmin.config do |config|
  config.asset_source = :sprockets
  config.main_app_name = %w[QApp BackOffice]

  ### Popular gems integration

  ## == Devise ==
  #config.authenticate_with do
  # warden.authenticate!(scope: :admin)
  #end
  #config.current_user_method(&:current_admin)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  config.show_gravatar = false

  # Sono le azioni che puoi fare dal RailsAdmin
  config.actions do
    dashboard # mandatory - Se la tolgo non vedo nulla
    index # mandatory - Se la tolgo non vedo i modelli
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  # La parte delle strategie e di quelle pagine può essere messa anche qui volendo: https://github.com/railsadminteam/rails_admin/wiki/Actions
  # tipo se voglio invalidare una cache deve per forza andare qua sotto
  #
  # Si può mettere un bel wysywyg di rails 6/7 il https://github.com/railsadminteam/rails_admin/wiki/ActionText MA visto che serve webpacher lasciamo stare.
  #
  #
  # sui modelli si può fare eager_loading per evitare troope query https://github.com/railsadminteam/rails_admin/wiki/Associations-basics
end

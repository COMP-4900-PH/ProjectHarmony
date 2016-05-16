class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)

    if user.admin?

      # Admins have access to all CRUD operations
      can :manage, :all

    elsif user.detailedUsers?

      ########## Events #########

      # Detailed users can update events if they are the owner
      can :update, Event do |event|
        # this could cause problems as we are using foreign keys
        # should this be event.user_id == user.id
        event.creator_id == current_user.id
      end

      # Detailed users can destroy events if they are the owner
      can :destroy, Event do |event|
        # this could cause problems as we are using foreign keys
        # should this be event.user_id == user.id
        event.creator_id == current_user.id
      end

      # Detailed users can create events
      can :create, Event

      # Detailed users can join events
      can :new, Event

      # Detailed users can view the event page
      can :index, Event

      # Detailed users can view the show events page
      can :show, Event

      ########## Sailings #########

      # Detailed users can join sailings
      can :new, Sailing

      ########## Travelling Party #########

      can :create, TravellingParty

    else

      # can :read, :all

    end


    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end

# /client/src/app/controllers/pages.controller.coffee
angular.module "bcRailsNg"
  .controller "ProjectsController", ($scope, Projects, $timeout, toastr) ->
    'ngInject'
    pc = this
    activate = ->
      getAllProjects()
      # $timeout (->
      #   pc.classAnimation = 'rubberBand'
      #   return
      # ), 4000
      return

    getAllProjects = ->
      Projects.query().then (allProjects) ->
        pc.allProjects = allProjects
        # angular.forEach pc.allProjects, (_page) ->
        #   _page.rank = Math.random()
        #   return
      return

    pc.allProjects = []
    # pc.classAnimation = ''
    pc.creationDate = 1446491572536
    activate()
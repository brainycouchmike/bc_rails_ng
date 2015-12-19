# /client/app/src/pages/pages.module.coffee
angular.module 'bcRailsNg'
  .factory "Projects", (RailsResource, malarkey, toastr) ->
    class Projects extends RailsResource
      @configure url: "/api/projects", name: "projects"

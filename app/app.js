var app = (function() {
    'use strict';

    angular
        .module('app',
            [
               // 'restangular',
               // 'ui.bootstrap',
                'ui.router',

            ] )
        .constant('ENV','dev')
        .config(config)
        .run(run)
    ;


    function run(){
    }


    function config($stateProvider, $urlRouterProvider) {
        $stateProvider.state('home', {
            url: '/',
            templateUrl: 'partials/home.html',
            controller: 'MainCtrl',
            controllerAs : 'Mc'
        })
        ;

        $urlRouterProvider.otherwise('/');
    }
    return angular.module('app');
}).call(app);


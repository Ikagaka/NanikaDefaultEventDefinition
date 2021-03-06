// Generated by CoffeeScript 1.8.0

/* (C) 2014 Narazaka : Licensed under The MIT License - http://narazaka.net/license/MIT?2014 */

(function() {
  var NanikaEventDefinition;

  NanikaEventDefinition = this.NanikaEventDefinition;

  if (NanikaEventDefinition == null) {
    NanikaEventDefinition = {};
  }

  NanikaEventDefinition.firstboot = {
    request: {
      id: 'OnFirstBoot',
      headers: {
        vanish_count: 0
      }
    }
  };

  NanikaEventDefinition.boot = {
    request: {
      id: 'OnBoot',
      headers: {
        shell_name: 0,
        halted: {
          name: 6,
          value: function(value, nanika, request_args, optionals) {
            if (value) {
              return 'halt';
            } else {
              return '';
            }
          }
        },
        halted_ghost: {
          name: 7,
          value: function(value, nanika, request_args, optionals) {
            if (value != null) {
              return value;
            } else {
              return '';
            }
          }
        }
      }
    }
  };

  NanikaEventDefinition.changed = {
    request: {
      id: 'OnGhostChanged',
      headers: {
        from_sakuraname: 0,
        from_script: 1,
        from_name: 2,
        from_path: 3,
        shell_name: 7
      }
    }
  };

  NanikaEventDefinition.called = {
    request: {
      id: 'OnGhostCalled',
      headers: {
        from_sakuraname: 0,
        from_script: 1,
        from_name: 2,
        from_path: 3,
        shell_name: 7
      }
    }
  };

  this.NanikaEventDefinition = NanikaEventDefinition;

}).call(this);

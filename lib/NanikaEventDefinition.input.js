// Generated by CoffeeScript 1.8.0

/* (C) 2014 Narazaka : Licensed under The MIT License - http://narazaka.net/license/MIT?2014 */

(function() {
  var NanikaEventDefinition;

  NanikaEventDefinition = this.NanikaEventDefinition;

  if (NanikaEventDefinition == null) {
    NanikaEventDefinition = {};
  }

  NanikaEventDefinition.userinput = {
    request: {
      id: 'OnUserInput',
      headers: {
        id: 0,
        content: 1
      }
    }
  };

  NanikaEventDefinition.userinputcancel = {
    request: {
      id: 'OnUserInputCancel',
      headers: {
        id: 0,
        reason: 1
      }
    }
  };

  NanikaEventDefinition.communicateinputcancel = {
    request: {
      id: 'OnCommunicateInputCancel',
      headers: {
        reason: 1
      }
    }
  };

  this.NanikaEventDefinition = NanikaEventDefinition;

}).call(this);
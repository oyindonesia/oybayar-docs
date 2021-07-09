//= require ../lib/_lunr
//= require ../lib/_jquery
//= require ../lib/_jquery.highlight
; (function () {
  'use strict';

  var content, searchResults, searchResultsMobile;
  var highlightOpts = { element: 'span', className: 'search-highlight' };
  var searchDelay = 0;
  var timeoutHandle = 0;
  var index;

  function populate() {
    index = lunr(function () {

      this.ref('id');
      this.field('title', { boost: 10 });
      this.field('body');
      this.pipeline.add(lunr.trimmer, lunr.stopWordFilter);
      var lunrConfig = this;

      $('h1, h2').each(function () {
        var title = $(this);
        var body = title.nextUntil('h1, h2');
        lunrConfig.add({
          id: title.prop('id'),
          title: title.text(),
          body: body.text()
        });
      });

    });
    determineSearchDelay();
  }

  $(populate);
  $(bind);

  function determineSearchDelay() {
    if (index.tokenSet.toArray().length > 5000) {
      searchDelay = 300;
    }
  }

  function bind() {
    content = $('.content');
    searchResults = $('.search-results');
    searchResultsMobile = $('.search-results-mobile');

    $('#input-search').on('keyup', function (e) {
      var wait = function () {
        return function (executingFunction, waitTime) {
          clearTimeout(timeoutHandle);
          timeoutHandle = setTimeout(executingFunction, waitTime);
        };
      }();
      wait(function () {
        search(e);
      }, searchDelay);
    });

    $('#input-search-mobile').on('keyup', function (e) {
      var wait = function () {
        return function (executingFunction, waitTime) {
          clearTimeout(timeoutHandle);
          timeoutHandle = setTimeout(executingFunction, waitTime);
        };
      }();
      wait(function () {
        searchMobile(e);
      }, searchDelay);
    });

    $('#search-toggle-mobile').click(function () {
      $('.search-bar-mobile').addClass('open')
      var searchInput = $('#input-search-mobile')[0];
      searchInput.value('')
    });

    $('#search-bar-close').click(function () {
      $('.search-bar-mobile').removeClass('open')
      searchResultsMobile.removeClass('visible');
      searchResultsMobile.empty();
    })
  }

  function search(event) {

    var searchInput = $('#input-search')[0];

    unhighlight();
    searchResults.addClass('visible');

    // ESC clears the field
    if (event.keyCode === 27) searchInput.value = '';

    if (searchInput.value) {
      var results = index.search(searchInput.value).filter(function (r) {
        return r.score > 0.0001;
      });

      if (results.length) {
        searchResults.empty();
        $.each(results, function (index, result) {
          var elem = document.getElementById(result.ref);
          searchResults.append("<li><a href='#" + result.ref + "'>" + $(elem).text() + "</a></li>");
        });
        highlight.call(searchInput);
      } else {
        searchResults.html('<li></li>');
        $('.search-results li').text('No Results Found for "' + searchInput.value + '"');
      }
    } else {
      unhighlight();
      searchResults.removeClass('visible');
    }
  }

  function searchMobile(event) {

    var searchInput = $('#input-search-mobile')[0];

    unhighlight();
    searchResultsMobile.addClass('visible');

    // ESC clears the field
    if (event.keyCode === 27) searchInput.value = '';

    if (searchInput.value) {
      var results = index.search(searchInput.value).filter(function (r) {
        return r.score > 0.0001;
      });

      if (results.length) {
        searchResultsMobile.empty();
        $.each(results, function (index, result) {
          var elem = document.getElementById(result.ref);
          searchResultsMobile.append("<li><a href='#" + result.ref + "'>" + $(elem).text() + "</a></li>");
        });
        highlight.call(searchInput);
      } else {
        searchResultsMobile.html('<li></li>');
        $('.search-results-mobile li').text('No Results Found for "' + searchInput.value + '"');
      }
    } else {
      unhighlight();
      searchResultsMobile.removeClass('visible');
    }
  }

  function highlight() {
    if (this.value) content.highlight(this.value, highlightOpts);
  }

  function unhighlight() {
    content.unhighlight(highlightOpts);
  }


})();


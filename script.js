document.addEventListener("DOMContentLoaded", function() {
    const deleteButtons = document.getElementsByClassName("delete-button");
    
    Array.from(deleteButtons).forEach(function(button) {
      button.addEventListener("click", function() {
        const row = this.parentNode.parentNode;
        row.parentNode.removeChild(row);
      });
    });
  });
  
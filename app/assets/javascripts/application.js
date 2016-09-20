// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function() {
  $(document).on('change', '.category_change', function() {
    //Get current selected category
    $currentCate = $(".category_change").val();
    //Enable to select the food
    $('select.category_food').removeAttr('disabled')
    //Hide all food in food options
    $('select.category_food option').hide();
    //Show all the food that is in the selected category
    $("[data-food="+$currentCate+"]").show();
  });
  $(document).on('change', '.category_food', function() {
    //Get the current selected category
    $currentCate = $(".category_change").val();
    //Hide previous selected food
    $("td.cells_food").css('display','none');
    //Get the current selected food id
    $currentFoodId = $(".category_food").val();
    //Get the current food name!!!
    $currentFood = foods.find(function(food) { return food.id == $currentFoodId });
    $currentFoodName = $currentFood.name;
    //Show the current selected food
    $("[specify-food="+$currentFoodName+"]").css('display','');
    //Current data of selected food
    $calorie = $("[specify-food="+$currentFoodName+"]")[2].innerHTML.split(" ").shift();
    $fat = $("[specify-food="+$currentFoodName+"]")[3].innerHTML.split(" ").shift();
    $protein = $("[specify-food="+$currentFoodName+"]")[4].innerHTML.split(" ").shift();
    //Attach data current food to pending row for calculation
    $('#cal_food_select').text($calorie);
    $('#fat_food_select').text($fat);
    $('#protein_food_select').text($protein);
    //Change the image of current selected food
    $("#food_image").attr('src',`/assets/foods/${$currentCate}/${$currentFoodName}.jpg`);
  });
  $(document).on('change', '#weight_input', function() {
    //Get current category,food and weight input
    $currentCate = $(".category_change").val();
    $currentWeight = parseInt($("#weight_input").val());
    //Get pending data of food selected
    $pend_calorie = parseInt($('#cal_food_select').text());
    $pend_fat = $('#fat_food_select').text();
    $pend_protein = $('#protein_food_select').text();
    //Update the data based on weight
    $("#cal_food_sum").text(`${parseInt($currentWeight*$pend_calorie/100)} kcal`);
    $("#fat_food_sum").text(`${($currentWeight*$pend_fat/100).toFixed(2)} g`);
    $("#protein_food_sum").text(`${($currentWeight*$pend_fat/100).toFixed(2)} g`);
  });
});

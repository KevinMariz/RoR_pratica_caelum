require 'test_helper'

class RestaurantesControllerTest < ActionController::TestCase
     fixtures :restaurantes
     
    def test_procura_restaurante
        get :busca, :nome => 'Fasano'
        assert_not_nil assigns(:restaurante)
        assert_equal restaurantes(:fasano).nome, assigns(:restaurante).nome
        assert_redirected_to :action => 'show'
    end
  
     def test_procura_restaurante_nao_encontra
        get :busca, :nome => 'Botequin'
        assert_redirected_to :action => 'index'
        assert_equal 'Restaurante não encontrado.', flash[:notice]
    end
end

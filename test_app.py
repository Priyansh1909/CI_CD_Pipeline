import App  


def test_hello():
    test_client = App.app.test_client()


    response = test_client.get('/')


    assert response.data == b'Hello World!'

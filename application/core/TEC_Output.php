<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TEC_Output extends CI_Output
{

    /**
     * TEC_Output->json()
     *
     * Define uma resposta JSON com metadados para ser retornada para a
     * requisição HTTP.
     *
     * @param array $data
     * @param null|array $meta
     * @param null|string $dataKey
     * @param null|bool $pretty
     * @return CI_Output
     */
    public function json($data = [], $meta = [], $dataKey = 'data', $pretty = null)
    {
        if (is_null($dataKey)) {
            $response = $data;
        } else {
            $response = [
                'meta' => $meta,
                $dataKey => $data,
            ];
        }

        return $this->pure_json($response, $pretty);
    }

    /**
     * TEC_Output->pure_json()
     *
     * Define uma resposta JSON sem a estrutura comum de API Schema.
     *
     * @param array $data
     * @param null|bool $pretty
     * @return CI_Output
     */
    public function pure_json($data = [], $pretty = null)
    {
        if (null === $pretty) {
            $pretty = (defined('ENVIRONMENT') && 'development' === ENVIRONMENT);
        }

        return $this
            ->set_content_type('application/json')
            ->set_output(json_encode($data, $pretty ? JSON_PRETTY_PRINT : 0));
    }

    /**
     * TEC_Output->json_error()
     *
     * Define uma mensagem de erro para ser retornada para a requisição
     * HTTP.
     *
     * @param  string  $message
     * @param  integer $code
     * @param  string  $status
     * @return CI_Output
     */
    public function json_error($message, $statusCode = 500, $status = 'error', $code = 0)
    {
        return $this
            ->set_status_header($statusCode)
            ->set_content_type('application/json')
            ->set_output(json_encode([
                'error' => [
                    'code' => $code,
                    'status' => $status,
                    'message' => $message
                ]
            ]));
    }

}

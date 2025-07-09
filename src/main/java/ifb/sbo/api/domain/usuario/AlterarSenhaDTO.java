package ifb.sbo.api.domain.usuario;

import jakarta.validation.constraints.NotBlank;

public record AlterarSenhaDTO(
        @NotBlank
        String senhaAtual,
        @NotBlank
        String novaSenha) {
}

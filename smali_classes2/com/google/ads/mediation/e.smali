.class final Lcom/google/ads/mediation/e;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/a;


# instance fields
.field final a:Lcom/google/ads/mediation/a;

.field final b:Lhp;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a;Lhp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/e;->a:Lcom/google/ads/mediation/a;

    iput-object p2, p0, Lcom/google/ads/mediation/e;->b:Lhp;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/e;->b:Lhp;

    iget-object v1, p0, Lcom/google/ads/mediation/e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhp;->a(Lho;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/e;->b:Lhp;

    iget-object v1, p0, Lcom/google/ads/mediation/e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1, p1}, Lhp;->a(Lho;I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/e;->b:Lhp;

    iget-object v1, p0, Lcom/google/ads/mediation/e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhp;->b(Lho;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/e;->b:Lhp;

    iget-object v1, p0, Lcom/google/ads/mediation/e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhp;->c(Lho;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/e;->b:Lhp;

    iget-object v1, p0, Lcom/google/ads/mediation/e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhp;->d(Lho;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/e;->b:Lhp;

    iget-object v1, p0, Lcom/google/ads/mediation/e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhp;->e(Lho;)V

    return-void
.end method

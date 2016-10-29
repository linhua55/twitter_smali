.class final Lcom/google/ads/mediation/f;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/a;


# instance fields
.field final a:Lcom/google/ads/mediation/a;

.field final b:Lhr;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a;Lhr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    iput-object p2, p0, Lcom/google/ads/mediation/f;->b:Lhr;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lhr;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhr;->a(Lhq;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lhr;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1, p1}, Lhr;->a(Lhq;I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lhr;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhr;->b(Lhq;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lhr;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhr;->c(Lhq;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lhr;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhr;->d(Lhq;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lhr;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lhr;->e(Lhq;)V

    return-void
.end method

.class final Lcom/google/ads/mediation/g;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/ads/formats/g;
.implements Lcom/google/android/gms/ads/formats/i;
.implements Lcom/google/android/gms/ads/internal/client/a;


# instance fields
.field final a:Lcom/google/ads/mediation/a;

.field final b:Lht;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a;Lht;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/g;->a:Lcom/google/ads/mediation/a;

    iput-object p2, p0, Lcom/google/ads/mediation/g;->b:Lht;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/g;->b:Lht;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1, p1}, Lht;->a(Lhs;I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/formats/f;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/g;->b:Lht;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->a:Lcom/google/ads/mediation/a;

    new-instance v2, Lcom/google/ads/mediation/c;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/c;-><init>(Lcom/google/android/gms/ads/formats/f;)V

    invoke-interface {v0, v1, v2}, Lht;->a(Lhs;Lhu;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/formats/h;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/g;->b:Lht;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->a:Lcom/google/ads/mediation/a;

    new-instance v2, Lcom/google/ads/mediation/d;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/d;-><init>(Lcom/google/android/gms/ads/formats/h;)V

    invoke-interface {v0, v1, v2}, Lht;->a(Lhs;Lhu;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/g;->b:Lht;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lht;->a(Lhs;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/g;->b:Lht;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lht;->b(Lhs;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/g;->b:Lht;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lht;->c(Lhs;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/g;->b:Lht;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lht;->d(Lhs;)V

    return-void
.end method

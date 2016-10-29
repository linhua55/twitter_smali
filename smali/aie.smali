.class Laie;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laib;


# direct methods
.method constructor <init>(Laib;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Laie;->a:Laib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Laie;->a:Laib;

    invoke-static {v0}, Laib;->a(Laib;)Lahy;

    move-result-object v0

    iget-object v1, p0, Laie;->a:Laib;

    invoke-static {v1}, Laib;->c(Laib;)Lcom/twitter/android/moments/viewmodels/u;

    move-result-object v1

    iget-object v2, p0, Laie;->a:Laib;

    .line 121
    invoke-static {v2}, Laib;->d(Laib;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lahy;->a(Lcom/twitter/android/moments/viewmodels/u;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 122
    iget-object v0, p0, Laie;->a:Laib;

    invoke-static {v0}, Laib;->e(Laib;)Lcom/twitter/model/moments/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Laie;->a:Laib;

    invoke-static {v0}, Laib;->b(Laib;)Laih;

    move-result-object v0

    iget-object v1, p0, Laie;->a:Laib;

    invoke-static {v1}, Laib;->c(Laib;)Lcom/twitter/android/moments/viewmodels/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/android/moments/viewmodels/u;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laih;->a(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Laie;->a(Ljava/lang/Boolean;)V

    return-void
.end method

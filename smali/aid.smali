.class Laid;
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
.field final synthetic a:Lcom/twitter/model/moments/a;

.field final synthetic b:Laib;


# direct methods
.method constructor <init>(Laib;Lcom/twitter/model/moments/a;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Laid;->b:Laib;

    iput-object p2, p0, Laid;->a:Lcom/twitter/model/moments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Laid;->b:Laib;

    invoke-static {v0}, Laib;->b(Laib;)Laih;

    move-result-object v0

    iget-object v1, p0, Laid;->a:Lcom/twitter/model/moments/a;

    invoke-virtual {v0, v1}, Laih;->a(Lcom/twitter/model/moments/a;)V

    .line 102
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Laid;->a(Ljava/lang/Boolean;)V

    return-void
.end method

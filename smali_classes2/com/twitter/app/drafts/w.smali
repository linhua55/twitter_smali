.class Lcom/twitter/app/drafts/w;
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
        "Lcmf",
        "<",
        "Lcom/twitter/model/drafts/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/app/drafts/s;


# direct methods
.method constructor <init>(Lcom/twitter/app/drafts/s;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/twitter/app/drafts/w;->a:Lcom/twitter/app/drafts/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/model/drafts/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/app/drafts/w;->a:Lcom/twitter/app/drafts/s;

    invoke-virtual {v0, p1}, Lcom/twitter/app/drafts/s;->a(Lcmf;)V

    .line 112
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcmf;

    invoke-virtual {p0, p1}, Lcom/twitter/app/drafts/w;->a(Lcmf;)V

    return-void
.end method

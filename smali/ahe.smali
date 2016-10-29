.class Lahe;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lahd;


# direct methods
.method constructor <init>(Lahd;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lahe;->a:Lahd;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/ad;)V
    .locals 1

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lahe;->a:Lahd;

    invoke-static {v0, p1}, Lahd;->a(Lahd;Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/ad;

    .line 82
    :cond_0
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lcom/twitter/model/moments/ad;

    invoke-virtual {p0, p1}, Lahe;->a(Lcom/twitter/model/moments/ad;)V

    return-void
.end method

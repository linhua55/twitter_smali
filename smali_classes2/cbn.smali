.class Lcbn;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcbm;


# direct methods
.method constructor <init>(Lcbm;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcbn;->a:Lcbm;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcbn;->a:Lcbm;

    invoke-virtual {v0}, Lcbm;->f()V

    .line 22
    return-void
.end method

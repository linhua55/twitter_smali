.class Lbsr;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lbsp;


# direct methods
.method constructor <init>(Lbsp;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lbsr;->a:Lbsp;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbsr;->a:Lbsp;

    invoke-virtual {v0}, Lbsp;->c()V

    .line 126
    return-void
.end method

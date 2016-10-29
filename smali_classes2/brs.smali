.class public Lbrs;
.super Lcom/twitter/library/service/x;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbrs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 19
    iput-object p3, p0, Lbrs;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected a_(Lcom/twitter/library/service/aa;)V
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lbrs;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lbrs;->T()Lcom/twitter/library/provider/b;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lbrs;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/provider/dm;->c(Ljava/lang/String;Lcom/twitter/library/provider/b;)I

    .line 27
    invoke-virtual {v1}, Lcom/twitter/library/provider/b;->a()V

    .line 28
    return-void
.end method

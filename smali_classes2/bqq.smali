.class public Lbqq;
.super Lbqr;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbqq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lbqr;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 20
    iput-object p3, p0, Lbqq;->a:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/provider/b;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lbqq;->s()Lcom/twitter/library/provider/dm;

    move-result-object v0

    iget-object v1, p0, Lbqq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/provider/dm;->c(Ljava/lang/String;Lcom/twitter/library/provider/b;)I

    .line 27
    return-void
.end method

.class Lcom/twitter/library/network/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lcom/twitter/library/network/u;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/u;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/network/v;->a:Lcom/twitter/library/network/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/library/network/v;->a:Lcom/twitter/library/network/u;

    invoke-static {v0}, Lcom/twitter/library/network/u;->a(Lcom/twitter/library/network/u;)V

    .line 28
    return-void
.end method

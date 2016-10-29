.class Lcom/twitter/library/network/x;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lcom/twitter/library/network/w;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/w;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/twitter/library/network/x;->a:Lcom/twitter/library/network/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/library/network/x;->a:Lcom/twitter/library/network/w;

    invoke-static {v0}, Lcom/twitter/library/network/w;->a(Lcom/twitter/library/network/w;)V

    .line 37
    return-void
.end method

.class Lcom/twitter/library/network/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lcom/twitter/library/network/l;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/l;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/twitter/library/network/m;->a:Lcom/twitter/library/network/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/library/network/m;->a:Lcom/twitter/library/network/l;

    invoke-static {v0}, Lcom/twitter/library/network/l;->a(Lcom/twitter/library/network/l;)V

    .line 62
    return-void
.end method

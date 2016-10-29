.class Lcom/twitter/config/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lcom/twitter/config/f;

.field final synthetic b:Lcom/twitter/config/k;


# direct methods
.method constructor <init>(Lcom/twitter/config/k;Lcom/twitter/config/f;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/twitter/config/m;->b:Lcom/twitter/config/k;

    iput-object p2, p0, Lcom/twitter/config/m;->a:Lcom/twitter/config/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/config/m;->a:Lcom/twitter/config/f;

    invoke-static {v0}, Lcom/twitter/config/d;->b(Lcom/twitter/config/f;)V

    .line 50
    return-void
.end method

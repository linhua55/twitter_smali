.class final Lcom/twitter/config/o;
.super Lcom/twitter/config/p;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/o;Lcom/twitter/config/i;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    iput-object p3, p0, Lcom/twitter/config/o;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/config/o;->b:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/twitter/config/p;-><init>(Lrx/o;Lcom/twitter/config/i;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/config/i;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/config/o;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/config/o;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/twitter/config/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/twitter/config/o;->a()Lcom/twitter/config/i;

    move-result-object v0

    return-object v0
.end method

.class Lcom/twitter/library/api/dm/requests/x;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/api/dm/requests/s;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/api/dm/requests/s;)V
    .locals 1

    .prologue
    .line 250
    const-class v0, Lcom/twitter/library/api/dm/requests/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 251
    iput-object p3, p0, Lcom/twitter/library/api/dm/requests/x;->a:Lcom/twitter/library/api/dm/requests/s;

    .line 252
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/x;->a:Lcom/twitter/library/api/dm/requests/s;

    invoke-virtual {v0}, Lcom/twitter/library/api/dm/requests/s;->a()V

    .line 257
    return-void
.end method

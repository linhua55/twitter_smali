.class Lcom/twitter/library/api/dm/requests/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/api/dm/requests/s;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/dm/requests/s;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/t;->a:Lcom/twitter/library/api/dm/requests/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/t;->a:Lcom/twitter/library/api/dm/requests/s;

    invoke-static {v0}, Lcom/twitter/library/api/dm/requests/s;->a(Lcom/twitter/library/api/dm/requests/s;)V

    .line 112
    return-void
.end method

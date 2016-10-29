.class public Lcom/twitter/library/api/dm/requests/q;
.super Lcom/twitter/library/api/dm/requests/a;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/twitter/library/api/dm/requests/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/dm/requests/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 16
    invoke-static {p3}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/q;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/q;->a:Ljava/lang/String;

    return-object v0
.end method

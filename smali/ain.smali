.class public Lain;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Landroid/content/Context;",
        "Laeo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/client/Session;


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lain;->a:Lcom/twitter/library/client/Session;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Laeo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lain;->a:Lcom/twitter/library/client/Session;

    invoke-static {p1, v0}, Laeo;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Laeo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lain;->a(Landroid/content/Context;)Laeo;

    move-result-object v0

    return-object v0
.end method

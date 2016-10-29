.class Lapm;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapl;


# direct methods
.method constructor <init>(Lapl;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lapm;->a:Lapl;

    invoke-direct {p0}, Lcmv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcgi;->a:Lcgi;

    invoke-virtual {v0, p1}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lapm;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method

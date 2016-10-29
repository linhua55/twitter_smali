.class public Lcom/twitter/android/timeline/cu;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/android/timeline/cv;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/timeline/cy;

.field private final b:Lcom/twitter/android/timeline/cz;

.field private final c:Lcom/twitter/android/timeline/cw;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/cy;Lcom/twitter/android/timeline/cz;Lcom/twitter/android/timeline/cw;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcmv;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/twitter/android/timeline/cu;->a:Lcom/twitter/android/timeline/cy;

    .line 18
    iput-object p2, p0, Lcom/twitter/android/timeline/cu;->b:Lcom/twitter/android/timeline/cz;

    .line 19
    iput-object p3, p0, Lcom/twitter/android/timeline/cu;->c:Lcom/twitter/android/timeline/cw;

    .line 20
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cu;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->a:Lcom/twitter/android/timeline/cy;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cy;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->b:Lcom/twitter/android/timeline/cz;

    .line 25
    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cz;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->c:Lcom/twitter/android/timeline/cw;

    .line 26
    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cw;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->a:Lcom/twitter/android/timeline/cy;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cy;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->a:Lcom/twitter/android/timeline/cy;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cy;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->b:Lcom/twitter/android/timeline/cz;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cz;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->b:Lcom/twitter/android/timeline/cz;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cz;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->c:Lcom/twitter/android/timeline/cw;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cw;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/twitter/android/timeline/cu;->c:Lcom/twitter/android/timeline/cw;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/cw;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot be hydrated to a WhoToFollowItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cu;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

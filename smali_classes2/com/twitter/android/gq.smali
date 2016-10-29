.class public Lcom/twitter/android/gq;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/android/gq;
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lcom/twitter/android/gq;->e:I

    .line 185
    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/twitter/android/gq;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/twitter/android/gq;->a:Landroid/content/Context;

    .line 161
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/gq;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/twitter/android/gq;->b:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/gq;
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/twitter/android/gq;->d:Z

    .line 179
    return-object p0
.end method

.method protected b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/gq;->a:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/GalleryGridActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "scribe_section"

    iget-object v2, p0, Lcom/twitter/android/gq;->b:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "permissions_event_prefix"

    iget-object v2, p0, Lcom/twitter/android/gq;->c:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_video_allowed"

    iget-boolean v2, p0, Lcom/twitter/android/gq;->d:Z

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "camera_initiator"

    iget v2, p0, Lcom/twitter/android/gq;->e:I

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/android/gq;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/twitter/android/gq;->c:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/twitter/android/gq;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/gq;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/gq;->c:Ljava/lang/String;

    .line 191
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/twitter/android/gq;->b()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

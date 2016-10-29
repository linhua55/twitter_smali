.class public Lcom/twitter/library/client/navigation/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/c;
.implements Lcyg;


# instance fields
.field final a:Lcom/twitter/internal/android/widget/ToolBar;

.field final b:Landroid/app/Activity;

.field c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field d:Lcom/twitter/model/core/TwitterUser;

.field private final e:Lbjj;

.field private f:Lbjl;

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/twitter/internal/android/widget/ToolBar;ILandroid/app/Activity;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p3, p0, Lcom/twitter/library/client/navigation/q;->b:Landroid/app/Activity;

    .line 45
    iput-object p1, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    .line 46
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p2}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayOptions(I)V

    .line 47
    new-instance v0, Lbjj;

    iget-object v1, p0, Lcom/twitter/library/client/navigation/q;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lbjj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/library/client/navigation/q;->e:Lbjj;

    .line 48
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->e:Lbjj;

    iget-object v1, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1, v1}, Lbjj;->a(ILcom/twitter/internal/android/widget/ToolBar;)V

    .line 53
    return-void
.end method

.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 181
    iget-object v2, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/twitter/library/client/navigation/q;->b:Landroid/app/Activity;

    .line 182
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 181
    :goto_0
    invoke-virtual {v2, v0}, Lbjl;->a(Landroid/graphics/drawable/Drawable;)Lbjl;

    .line 184
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/navigation/q;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method

.method a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->c:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->c:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v1

    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/twitter/library/media/manager/UserImageRequest;->a(Ljava/lang/String;I)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p0}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/b;

    .line 161
    invoke-virtual {v1, v0}, Lcom/twitter/library/media/manager/l;->a(Lcom/twitter/media/request/b;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/q;->c:Ljava/util/concurrent/Future;

    .line 163
    return-void
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->d:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0, p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/twitter/library/client/navigation/q;->d:Lcom/twitter/model/core/TwitterUser;

    .line 128
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    sget v1, Lbjw;->my_profile:I

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    invoke-virtual {v0}, Lbjl;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/q;->g:Landroid/graphics/drawable/Drawable;

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    iget-object v1, p0, Lcom/twitter/library/client/navigation/q;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lbjl;->a(Landroid/graphics/drawable/Drawable;)Lbjl;

    .line 139
    if-nez p1, :cond_4

    .line 140
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->c:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->c:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/q;->c:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjl;->a(Ljava/lang/CharSequence;)Lbjl;

    .line 151
    :goto_1
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/navigation/q;->a(Lcom/twitter/model/core/TwitterUser;)V

    goto :goto_0

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjl;->a(Ljava/lang/CharSequence;)Lbjl;

    .line 149
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->f:Lbjl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjl;->c(Ljava/lang/CharSequence;)Lbjl;

    goto :goto_1
.end method

.method public a(Lcyh;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/ToolBar;->setOnToolBarItemSelectedListener(Lcyh;)V

    .line 73
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/ToolBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/internal/android/widget/ToolBar;->a(Ljava/lang/CharSequence;Z)V

    .line 108
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->f()Z

    move-result v0

    return v0
.end method

.method public b(I)Lcyd;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/ToolBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public b(Ljava/lang/CharSequence;Z)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/internal/android/widget/ToolBar;->b(Ljava/lang/CharSequence;Z)V

    .line 118
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->g()Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/ToolBar;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->h()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->invalidate()V

    .line 58
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->requestLayout()V

    .line 63
    return-void
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/library/client/navigation/q;->a:Lcom/twitter/internal/android/widget/ToolBar;

    return-object v0
.end method

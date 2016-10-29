.class public abstract Lcom/twitter/library/client/AbsPreferenceActivity;
.super Lcom/twitter/app/common/base/BasePreferenceActivity;
.source "Twttr"


# instance fields
.field protected I:J

.field protected J:Lcom/twitter/library/client/bd;

.field private a:Lcom/twitter/library/client/bk;

.field private b:Lcom/twitter/library/client/as;

.field private c:Lcom/twitter/internal/android/widget/ToolBar;

.field private d:Lcom/twitter/library/client/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/twitter/app/common/base/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 156
    sget v0, Lbjw;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/AbsPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 157
    if-eqz v0, :cond_3

    .line 158
    new-instance v1, Lbjj;

    invoke-direct {v1, p0}, Lbjj;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsPreferenceActivity;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_4

    .line 161
    new-instance v2, Lcom/twitter/library/client/k;

    invoke-direct {v2, p0, v1, v0}, Lcom/twitter/library/client/k;-><init>(Lcom/twitter/library/client/AbsPreferenceActivity;Lbjj;Lcom/twitter/internal/android/widget/ToolBar;)V

    iput-object v2, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/client/AbsPreferenceActivity;->a(Lbjj;Lcom/twitter/internal/android/widget/ToolBar;)Z

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    if-nez v2, :cond_1

    if-eqz v1, :cond_6

    .line 168
    :cond_1
    iput-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->c:Lcom/twitter/internal/android/widget/ToolBar;

    .line 169
    new-instance v1, Lcom/twitter/library/client/f;

    invoke-direct {v1, p0}, Lcom/twitter/library/client/f;-><init>(Lcom/twitter/library/client/AbsPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setOnToolBarItemSelectedListener(Lcyh;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/twitter/library/client/AbsPreferenceActivity;->a(Lcom/twitter/internal/android/widget/ToolBar;)Z

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    .line 182
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setVisibility(I)V

    .line 190
    :cond_3
    :goto_1
    return-void

    .line 163
    :cond_4
    new-instance v2, Lcom/twitter/library/client/h;

    invoke-direct {v2, p0, v1, v0}, Lcom/twitter/library/client/h;-><init>(Lcom/twitter/library/client/AbsPreferenceActivity;Lbjj;Lcom/twitter/internal/android/widget/ToolBar;)V

    iput-object v2, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->setVisibility(I)V

    goto :goto_1

    .line 187
    :cond_6
    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/twitter/library/service/x;I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method protected a(Lbjj;Lcom/twitter/internal/android/widget/ToolBar;)Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lbjl;)Z
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p1}, Lbjl;->a()I

    move-result v0

    sget v1, Lbjw;->home:I

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsPreferenceActivity;->finish()V

    .line 212
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/twitter/internal/android/widget/ToolBar;)Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Z)Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method a(ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    if-nez v1, :cond_0

    .line 259
    :goto_0
    return v0

    .line 254
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/AbsPreferenceActivity;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    invoke-interface {v1, p1}, Lcom/twitter/library/client/g;->a(Z)V

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lcom/twitter/library/service/x;I)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v1, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->b:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->I:J

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/client/as;->a(JLcom/twitter/library/service/x;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/client/AbsPreferenceActivity;->c(Lcom/twitter/library/service/x;I)V

    .line 123
    const/4 v6, 0x1

    .line 125
    :cond_0
    return v6
.end method

.method protected c(Lcom/twitter/library/service/x;I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method protected c(Z)V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/library/client/AbsPreferenceActivity;->a(ZZ)Z

    .line 249
    return-void
.end method

.method protected d(Z)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    invoke-interface {v0, p1}, Lcom/twitter/library/client/g;->b(Z)V

    .line 274
    :cond_0
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->a:Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method protected final l()Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->d:Lcom/twitter/library/client/g;

    invoke-interface {v0}, Lcom/twitter/library/client/g;->a()Z

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->a:Lcom/twitter/library/client/bk;

    .line 69
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->J:Lcom/twitter/library/client/bd;

    .line 70
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->J:Lcom/twitter/library/client/bd;

    invoke-static {p0, v0}, Lcom/twitter/library/client/as;->a(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bd;)Lcom/twitter/library/client/as;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->b:Lcom/twitter/library/client/as;

    .line 73
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->b:Lcom/twitter/library/client/as;

    new-instance v1, Lcom/twitter/library/client/e;

    invoke-direct {v1, p0}, Lcom/twitter/library/client/e;-><init>(Lcom/twitter/library/client/AbsPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/aw;)V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->b:Lcom/twitter/library/client/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/aw;)V

    .line 93
    invoke-super {p0}, Lcom/twitter/app/common/base/BasePreferenceActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Lcom/twitter/app/common/base/BasePreferenceActivity;->onStart()V

    .line 87
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->b:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->I:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/as;->c(J)V

    .line 88
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->c:Lcom/twitter/internal/android/widget/ToolBar;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/twitter/library/client/AbsPreferenceActivity;->c:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/ToolBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/BasePreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BasePreferenceActivity;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/twitter/library/client/AbsPreferenceActivity;->c()V

    .line 100
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BasePreferenceActivity;->setContentView(Landroid/view/View;)V

    .line 105
    invoke-direct {p0}, Lcom/twitter/library/client/AbsPreferenceActivity;->c()V

    .line 106
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/BasePreferenceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-direct {p0}, Lcom/twitter/library/client/AbsPreferenceActivity;->c()V

    .line 112
    return-void
.end method

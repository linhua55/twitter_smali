.class public Lcom/twitter/library/client/navigation/l;
.super Lcom/twitter/library/client/navigation/q;
.source "Twttr"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcyz;


# instance fields
.field private final e:Lcom/twitter/library/client/navigation/ModernDrawerView;

.field private final f:Landroid/support/v4/widget/DrawerLayout;

.field private final g:Ljava/util/AbstractMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twitter/library/client/navigation/p;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/BaseAdapter;

.field private i:Lcyh;


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/navigation/ModernDrawerView;Lcom/twitter/internal/android/widget/ToolBar;ILandroid/app/Activity;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/library/client/navigation/q;-><init>(Lcom/twitter/internal/android/widget/ToolBar;ILandroid/app/Activity;)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/navigation/l;->g:Ljava/util/AbstractMap;

    .line 76
    iput-object p1, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    .line 77
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    invoke-virtual {v0}, Lcom/twitter/library/client/navigation/ModernDrawerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/twitter/library/client/navigation/l;->f:Landroid/support/v4/widget/DrawerLayout;

    .line 78
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    invoke-virtual {v0, p0}, Lcom/twitter/library/client/navigation/ModernDrawerView;->setOnDrawerClickListener(Lcyz;)V

    .line 79
    new-instance v0, Lcom/twitter/library/client/navigation/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/client/navigation/n;-><init>(Lcom/twitter/library/client/navigation/l;Lcom/twitter/library/client/navigation/m;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/navigation/l;->a(Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;)V

    .line 81
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->a:Lcom/twitter/internal/android/widget/ToolBar;

    const/16 v1, 0xe8

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayOptions(I)V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/navigation/l;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->h:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private a(Lcyd;)Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/twitter/library/client/navigation/l;->e()Z

    .line 182
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->i:Lcyh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->i:Lcyh;

    invoke-interface {v0, p1}, Lcyh;->a(Lcyd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/library/client/navigation/l;)Lcom/twitter/library/client/navigation/ModernDrawerView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    return-object v0
.end method

.method private d(I)Lcom/twitter/library/client/ax;
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->h:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    .line 284
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 285
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 286
    instance-of v0, v1, Lcom/twitter/library/client/ax;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/twitter/library/client/ax;

    invoke-virtual {v0}, Lcom/twitter/library/client/ax;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 287
    check-cast v1, Lcom/twitter/library/client/ax;

    .line 291
    :goto_1
    return-object v1

    .line 284
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 291
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 89
    new-instance v2, Lcom/twitter/library/client/navigation/o;

    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->b:Landroid/app/Activity;

    invoke-direct {v2, p0, v0, p1}, Lcom/twitter/library/client/navigation/o;-><init>(Lcom/twitter/library/client/navigation/l;Landroid/content/Context;I)V

    .line 90
    invoke-virtual {v2}, Lcom/twitter/library/client/navigation/o;->a()V

    .line 93
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->a:Lcom/twitter/internal/android/widget/ToolBar;

    iget-object v1, v2, Lcom/twitter/library/client/navigation/o;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(Ljava/util/Collection;)V

    .line 96
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->h:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, v2, Lcom/twitter/library/client/navigation/o;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/twitter/library/client/navigation/l;->d(I)Lcom/twitter/library/client/ax;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/twitter/library/client/navigation/l;->g:Ljava/util/AbstractMap;

    if-eqz v4, :cond_0

    new-instance v1, Lcom/twitter/library/client/navigation/p;

    invoke-direct {v1, p0, v4}, Lcom/twitter/library/client/navigation/p;-><init>(Lcom/twitter/library/client/navigation/l;Lcom/twitter/library/client/ax;)V

    :goto_1
    invoke-virtual {v5, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    iget-object v1, v2, Lcom/twitter/library/client/navigation/o;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/navigation/ModernDrawerView;->a(Ljava/util/List;)V

    .line 106
    return-void
.end method

.method public a(Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->f:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 122
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->h:Landroid/widget/BaseAdapter;

    if-eq v0, p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/twitter/library/client/navigation/l;->h:Landroid/widget/BaseAdapter;

    .line 118
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/twitter/library/client/navigation/l;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->setDrawerIcon(Landroid/graphics/Bitmap;)V

    .line 262
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/navigation/l;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method

.method public a(Lcom/twitter/model/account/UserAccount;)V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/twitter/library/client/navigation/l;->e()Z

    .line 157
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->i:Lcyh;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->i:Lcyh;

    iget-object v1, p1, Lcom/twitter/model/account/UserAccount;->a:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcyh;->d(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v1

    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    const/4 v2, -0x1

    .line 256
    invoke-static {v0, v2}, Lcom/twitter/library/media/manager/UserImageRequest;->a(Ljava/lang/String;I)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/b;

    .line 255
    invoke-virtual {v1, v0}, Lcom/twitter/library/media/manager/l;->a(Lcom/twitter/media/request/b;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/l;->c:Ljava/util/concurrent/Future;

    .line 257
    return-void
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 187
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->d:Lcom/twitter/model/core/TwitterUser;

    invoke-static {p1, v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->g:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/navigation/p;

    .line 193
    invoke-direct {p0, v1}, Lcom/twitter/library/client/navigation/l;->d(I)Lcom/twitter/library/client/ax;

    move-result-object v4

    .line 194
    if-nez v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-nez v0, :cond_0

    if-eqz v4, :cond_0

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/twitter/library/client/navigation/l;->g:Ljava/util/AbstractMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v4, :cond_3

    new-instance v0, Lcom/twitter/library/client/navigation/p;

    invoke-direct {v0, p0, v4}, Lcom/twitter/library/client/navigation/p;-><init>(Lcom/twitter/library/client/navigation/l;Lcom/twitter/library/client/ax;)V

    :goto_1
    invoke-virtual {v5, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    invoke-virtual {v0}, Lcom/twitter/library/client/navigation/ModernDrawerView;->getHeaderView()Landroid/view/View;

    move-result-object v3

    .line 200
    if-eqz v3, :cond_5

    .line 201
    sget v0, Lbjw;->my_profile:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    .line 202
    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 203
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 204
    invoke-virtual {p1}, Lcom/twitter/model/core/TwitterUser;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->a:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/ToolBar;->setDrawerIcon(Landroid/graphics/Bitmap;)V

    .line 210
    :goto_2
    sget v0, Lbjw;->banner_image:I

    .line 211
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/BackgroundImageView;

    .line 212
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->j:I

    if-eqz v1, :cond_7

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->j:I

    .line 213
    :goto_3
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 214
    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/BackgroundImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/media/util/HeaderImageVariant;->j:Lcom/twitter/media/request/d;

    .line 216
    invoke-virtual {v1, v2}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/d;)Lcom/twitter/media/request/b;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/BackgroundImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 221
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->b:Landroid/app/Activity;

    new-instance v1, Lcom/twitter/library/client/navigation/m;

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/twitter/library/client/navigation/m;-><init>(Lcom/twitter/library/client/navigation/l;Landroid/view/View;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/twitter/library/client/navigation/q;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 251
    return-void

    .line 207
    :cond_6
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/navigation/l;->a(Lcom/twitter/model/core/TwitterUser;)V

    goto :goto_2

    .line 212
    :cond_7
    iget-object v1, p0, Lcom/twitter/library/client/navigation/l;->b:Landroid/app/Activity;

    sget v4, Lbjt;->twitter_blue:I

    .line 213
    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_3
.end method

.method public a(Lcyh;)V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/twitter/library/client/navigation/q;->a(Lcyh;)V

    .line 111
    iput-object p1, p0, Lcom/twitter/library/client/navigation/l;->i:Lcyh;

    .line 112
    return-void
.end method

.method public a(Lcym;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/twitter/library/client/navigation/l;->a(Lcyd;)Z

    .line 152
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->f:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method public b(I)Lcyd;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/navigation/ModernDrawerView;->a(I)Lcym;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->g:Ljava/util/AbstractMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/navigation/p;

    .line 273
    if-nez v0, :cond_0

    .line 277
    invoke-super {p0, p1}, Lcom/twitter/library/client/navigation/q;->b(I)Lcyd;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->f:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->i:Lcyh;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->i:Lcyh;

    new-instance v1, Lcym;

    iget-object v2, p0, Lcom/twitter/library/client/navigation/l;->b:Landroid/app/Activity;

    sget v3, Lbjw;->accounts:I

    invoke-direct {v1, v2, v3, v4, v4}, Lcym;-><init>(Landroid/content/Context;III)V

    invoke-interface {v0, v1}, Lcyh;->a(Lcyd;)Z

    .line 167
    :cond_0
    return v4
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    new-instance v0, Lcym;

    iget-object v1, p0, Lcom/twitter/library/client/navigation/l;->b:Landroid/app/Activity;

    sget v2, Lbjw;->my_profile:I

    invoke-direct {v0, v1, v2, v3, v3}, Lcym;-><init>(Landroid/content/Context;III)V

    invoke-direct {p0, v0}, Lcom/twitter/library/client/navigation/l;->a(Lcyd;)Z

    .line 173
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/library/client/navigation/l;->f:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/twitter/library/client/navigation/l;->e:Lcom/twitter/library/client/navigation/ModernDrawerView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/navigation/l;->b(I)Lcyd;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, v0}, Lcom/twitter/library/client/navigation/l;->a(Lcyd;)Z

    .line 147
    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/navigation/l;->b(I)Lcyd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/client/navigation/l;->a(Lcyd;)Z

    move-result v0

    return v0
.end method

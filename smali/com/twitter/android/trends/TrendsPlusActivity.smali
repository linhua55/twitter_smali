.class public Lcom/twitter/android/trends/TrendsPlusActivity;
.super Lcom/twitter/android/ListFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/app/common/base/j;
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field private final a:Lcom/twitter/android/trends/i;

.field private final b:Lcom/twitter/android/trends/c;

.field private c:Landroid/widget/TextView;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/android/ListFragmentActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/twitter/android/trends/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/trends/i;-><init>(Lcom/twitter/android/trends/TrendsPlusActivity;Lcom/twitter/android/trends/h;)V

    iput-object v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->a:Lcom/twitter/android/trends/i;

    .line 47
    new-instance v0, Lcom/twitter/android/trends/c;

    invoke-direct {v0}, Lcom/twitter/android/trends/c;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->b:Lcom/twitter/android/trends/c;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/trends/TrendsPlusActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/internal/android/widget/ToolBar;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 122
    const v0, 0x7f13080d

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    .line 123
    invoke-static {p2}, Lcom/twitter/android/trends/l;->a(Lcom/twitter/library/client/Session;)Z

    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 124
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/twitter/app/common/base/y;)Lcom/twitter/android/ic;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 65
    new-instance v2, Lcom/twitter/android/trends/TrendsPlusFragment;

    invoke-direct {v2}, Lcom/twitter/android/trends/TrendsPlusFragment;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    const v1, 0x7f0a08df

    .line 67
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const v1, 0x7f0a08e0

    .line 68
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->c(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string/jumbo v1, "show_header"

    const-string/jumbo v3, "show_header"

    .line 71
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 70
    invoke-virtual {v0, v1, v3}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    .line 75
    :goto_0
    const-string/jumbo v1, "type"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v3}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    const-string/jumbo v3, "timeline_tag"

    const-string/jumbo v4, "TRENDSPLUS"

    .line 76
    invoke-virtual {v1, v3, v4}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    .line 77
    invoke-virtual {v1, v5}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    .line 79
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/trends/TrendsPlusFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 80
    new-instance v0, Lcom/twitter/android/ic;

    invoke-direct {v0, v2}, Lcom/twitter/android/ic;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    return-object v0

    .line 73
    :cond_0
    const-string/jumbo v1, "show_header"

    invoke-virtual {v0, v1, v5}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ListFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 88
    return-object p2
.end method

.method protected a(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "show_header"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a08ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 211
    if-ne p2, v4, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "trendsplus"

    aput-object v3, v0, v2

    const-string/jumbo v2, "search"

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "trends_dialog"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "keep_tailored_trends"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v0, v2

    .line 214
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 216
    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 199
    if-ne p2, v4, :cond_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/trends/TrendsLocationsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v4}, Lcom/twitter/android/trends/TrendsPlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "trendsplus"

    aput-object v3, v0, v2

    const-string/jumbo v2, "search"

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "trends_dialog"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "confirm_change_location"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v0, v2

    .line 204
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 206
    :cond_0
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 157
    const v2, 0x7f13080d

    if-ne v0, v2, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_0

    .line 162
    iput-boolean v1, v2, Lcom/twitter/model/account/UserSettings;->B:Z

    .line 163
    iget-object v3, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->J:Lcom/twitter/library/client/bd;

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v1, v4}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;ZLjava/lang/String;)Lblv;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 166
    :cond_0
    invoke-interface {p1, v6}, Lcyd;->f(Z)Lcyd;

    .line 167
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "trendsplus"

    aput-object v3, v0, v6

    const-string/jumbo v3, "search"

    aput-object v3, v0, v1

    const-string/jumbo v3, "menu"

    aput-object v3, v0, v7

    const-string/jumbo v3, "get_tailored_trends"

    aput-object v3, v0, v8

    const-string/jumbo v3, "click"

    aput-object v3, v0, v9

    .line 168
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v1

    .line 192
    :goto_0
    return v0

    .line 170
    :cond_1
    const v2, 0x7f13080c

    if-ne v0, v2, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->L()Lcom/twitter/android/client/c;

    .line 173
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->B:Z

    if-eqz v0, :cond_2

    .line 176
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v3, 0x7f0a08da

    .line 177
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v3, 0x7f0a08d9

    .line 178
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v3, 0x7f0a08d8

    .line 179
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 180
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/j;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 188
    :goto_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "trendsplus"

    aput-object v3, v2, v6

    const-string/jumbo v3, "search"

    aput-object v3, v2, v1

    const-string/jumbo v3, "menu"

    aput-object v3, v2, v7

    const-string/jumbo v3, "change_location"

    aput-object v3, v2, v8

    const-string/jumbo v3, "click"

    aput-object v3, v2, v9

    .line 189
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v1

    .line 190
    goto :goto_0

    .line 185
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/trends/TrendsLocationsActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/trends/TrendsPlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 192
    :cond_3
    invoke-super {p0, p1}, Lcom/twitter/android/ListFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/twitter/android/ListFragmentActivity;->a(Lcyg;)Z

    .line 129
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const v0, 0x7f14002f

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 132
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcyg;)I
    .locals 4

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/twitter/android/ListFragmentActivity;->b(Lcyg;)I

    .line 111
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 112
    const v1, 0x7f1307cc

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lbjl;->b(Z)Lbjl;

    .line 115
    iget-object v1, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    .line 116
    invoke-direct {p0, v0, v2}, Lcom/twitter/android/trends/TrendsPlusActivity;->a(Lcom/twitter/internal/android/widget/ToolBar;Lcom/twitter/library/client/Session;)V

    .line 117
    const/4 v0, 0x2

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ListFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040369

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->c:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "focus_search_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->d:Z

    .line 141
    return-void
.end method

.method public c()Lcom/twitter/android/trends/TrendsPlusFragment;
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f130143

    .line 228
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 229
    instance-of v1, v0, Lcom/twitter/android/trends/TrendsPlusFragment;

    if-eqz v1, :cond_0

    .line 230
    check-cast v0, Lcom/twitter/android/trends/TrendsPlusFragment;

    .line 232
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/ListFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 221
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->b:Lcom/twitter/android/trends/c;

    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v4

    .line 222
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->c()Lcom/twitter/android/trends/TrendsPlusFragment;

    move-result-object v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p0

    .line 221
    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/trends/c;->a(IILandroid/content/Intent;Lcom/twitter/library/client/Session;Landroid/content/Context;Lcom/twitter/internal/android/widget/ToolBar;Lcom/twitter/android/trends/TrendsPlusFragment;)V

    .line 223
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 146
    const v1, 0x7f130602

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->I()Z

    .line 148
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Ljava/lang/CharSequence;)V

    .line 150
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->a:Lcom/twitter/android/trends/i;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 94
    invoke-super {p0}, Lcom/twitter/android/ListFragmentActivity;->onPause()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/twitter/android/ListFragmentActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->a:Lcom/twitter/android/trends/i;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 101
    iget-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->d:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusActivity;->d:Z

    .line 105
    :cond_0
    return-void
.end method

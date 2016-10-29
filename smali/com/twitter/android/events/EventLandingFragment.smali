.class public Lcom/twitter/android/events/EventLandingFragment;
.super Lcom/twitter/android/SearchResultsFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/events/f;


# instance fields
.field private a:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:I

.field private final ae:Lcom/twitter/android/events/e;

.field private af:Ljava/lang/String;

.field private ag:I

.field private ah:Z

.field private ai:Z

.field private aj:I

.field private ak:I

.field private al:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/twitter/android/events/e;

    invoke-direct {v0}, Lcom/twitter/android/events/e;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ag:I

    .line 63
    iput v1, p0, Lcom/twitter/android/events/EventLandingFragment;->aj:I

    .line 64
    iput v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ak:I

    .line 65
    iput v1, p0, Lcom/twitter/android/events/EventLandingFragment;->al:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/events/EventLandingFragment;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ad:I

    return v0
.end method

.method private ab()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/events/TwitterEventActivity;

    .line 169
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->aC()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    move-object v4, v1

    .line 170
    :goto_0
    if-eqz v4, :cond_0

    if-nez v0, :cond_2

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 169
    :cond_1
    const/4 v1, 0x0

    move-object v4, v1

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 174
    iget-boolean v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ai:Z

    if-eqz v1, :cond_0

    move v2, v3

    .line 175
    :goto_2
    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 176
    invoke-interface {v5, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/pg;

    .line 177
    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/twitter/android/pg;->l:Z

    if-eqz v1, :cond_4

    .line 178
    iput v2, p0, Lcom/twitter/android/events/EventLandingFragment;->ad:I

    .line 182
    :cond_3
    new-instance v1, Lcom/twitter/android/events/a;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/events/a;-><init>(Lcom/twitter/android/events/EventLandingFragment;Lcom/twitter/android/events/TwitterEventActivity;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v1, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    iput-boolean v3, p0, Lcom/twitter/android/events/EventLandingFragment;->ai:Z

    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/events/EventLandingFragment;->aj:I

    goto :goto_1

    .line 175
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method protected I_()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method protected U()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/events/EventLandingFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/twitter/android/SearchResultsFragment;->a()V

    .line 272
    iget-boolean v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ah:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->g()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ah:Z

    .line 276
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->a(Landroid/content/Context;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->u()V

    goto :goto_0
.end method

.method protected a(Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/pg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x3

    iget v1, p0, Lcom/twitter/android/events/EventLandingFragment;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/android/events/EventLandingFragment;->aj:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/events/EventLandingFragment;->m:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcmf;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ai:Z

    .line 127
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->a(Lcmf;)V

    .line 128
    invoke-direct {p0}, Lcom/twitter/android/events/EventLandingFragment;->ab()V

    .line 129
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 206
    const v0, 0x7f04035b

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcom/twitter/app/common/list/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040208

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 209
    return-void

    .line 207
    :cond_0
    const v0, 0x7f04035c

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 228
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 229
    instance-of v1, v0, Lcom/twitter/android/ScrollingHeaderActivity;

    if-eqz v1, :cond_0

    .line 230
    check-cast v0, Lcom/twitter/android/ScrollingHeaderActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/model/topic/TwitterTopic;)V
    .locals 2

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    const-class v0, Lcom/twitter/model/topic/g;

    .line 144
    invoke-virtual {p1, v0}, Lcom/twitter/model/topic/TwitterTopic;->a(Ljava/lang/Class;)Lcom/twitter/model/topic/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/g;

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/events/TwitterEventActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/events/TwitterEventActivity;->a(Lcom/twitter/model/topic/g;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public a(Landroid/widget/AbsListView;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/events/TwitterEventActivity;

    .line 251
    invoke-virtual {v0}, Lcom/twitter/android/events/TwitterEventActivity;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    invoke-virtual {v2, p2}, Lcom/twitter/android/events/e;->a(I)V

    .line 253
    iget-object v2, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    invoke-virtual {v0, v2}, Lcom/twitter/android/events/TwitterEventActivity;->a(Lcom/twitter/android/events/e;)V

    .line 254
    iget-object v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    invoke-virtual {v0}, Lcom/twitter/android/events/e;->d()V

    .line 255
    if-nez p2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ak:I

    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/events/EventLandingFragment;->al:I

    .line 264
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/twitter/android/SearchResultsFragment;->a(Landroid/widget/AbsListView;I)Z

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/events/TwitterEventActivity;

    .line 238
    invoke-virtual {v0}, Lcom/twitter/android/events/TwitterEventActivity;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    iget v2, p0, Lcom/twitter/android/events/EventLandingFragment;->P:I

    invoke-virtual {v1, p1, p2, p5, v2}, Lcom/twitter/android/events/e;->a(Landroid/widget/AbsListView;IZI)V

    .line 240
    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/TwitterEventActivity;->a(Lcom/twitter/android/events/e;)V

    .line 241
    iget-object v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    invoke-virtual {v0}, Lcom/twitter/android/events/e;->d()V

    .line 242
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/SearchResultsFragment;->a(Landroid/widget/AbsListView;IIIZ)Z

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/twitter/android/SearchResultsFragment;->d()V

    .line 281
    iget-object v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    invoke-virtual {v0}, Lcom/twitter/android/events/e;->d()V

    .line 282
    iget-object v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ae:Lcom/twitter/android/events/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/e;->b(I)V

    .line 283
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ah:Z

    .line 288
    invoke-super {p0}, Lcom/twitter/android/SearchResultsFragment;->e()V

    .line 289
    return-void
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ak:I

    if-nez v0, :cond_0

    .line 294
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ak:I

    invoke-virtual {v0, v1, p1}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 295
    return-void

    .line 293
    :cond_0
    iget p1, p0, Lcom/twitter/android/events/EventLandingFragment;->al:I

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 215
    const/16 v0, 0x8

    iget v1, p0, Lcom/twitter/android/events/EventLandingFragment;->m:I

    if-eq v0, v1, :cond_0

    .line 216
    invoke-super {p0}, Lcom/twitter/android/SearchResultsFragment;->h()V

    .line 218
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/events/EventLandingFragment;->B:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/events/EventLandingFragment;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/android/events/EventLandingFragment;->ac:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "show_polled_content"

    aput-object v3, v1, v2

    .line 111
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->D:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/events/EventLandingFragment;->q:I

    .line 113
    invoke-static {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 114
    invoke-super {p0}, Lcom/twitter/android/SearchResultsFragment;->l()V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->t()Lcom/twitter/android/or;

    move-result-object v0

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string/jumbo v1, "scribe_section"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->a:Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "scribe_component"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ac:Ljava/lang/String;

    .line 74
    const-string/jumbo v1, "first_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ai:Z

    .line 75
    const-string/jumbo v1, "count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/events/EventLandingFragment;->aj:I

    .line 81
    :goto_0
    const-string/jumbo v1, "search_type"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ag:I

    .line 82
    const-string/jumbo v1, "event_id"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/EventLandingFragment;->af:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->B:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ac:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v1, 0x6

    .line 87
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->D:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 83
    invoke-virtual {p0, v0}, Lcom/twitter/android/events/EventLandingFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 89
    new-instance v0, Lcom/twitter/android/sn;

    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    iput-object v0, p0, Lcom/twitter/android/events/EventLandingFragment;->I:Lcom/twitter/android/sn;

    .line 90
    return-void

    .line 77
    :cond_0
    const-string/jumbo v1, "scribe_section"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->a:Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "scribe_component"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ac:Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ai:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    const-string/jumbo v0, "scribe_section"

    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "scribe_component"

    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/twitter/android/events/EventLandingFragment;->ag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 101
    const-string/jumbo v0, "event_id"

    iget-object v1, p0, Lcom/twitter/android/events/EventLandingFragment;->af:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    const-string/jumbo v0, "first_time"

    iget-boolean v1, p0, Lcom/twitter/android/events/EventLandingFragment;->ai:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string/jumbo v0, "count"

    iget v1, p0, Lcom/twitter/android/events/EventLandingFragment;->aj:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->setUserVisibleHint(Z)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/twitter/android/events/EventLandingFragment;->ab()V

    .line 201
    :cond_0
    return-void
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget v0, p0, Lcom/twitter/android/events/EventLandingFragment;->m:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string/jumbo v6, "ev_start_time ASC "

    .line 160
    :goto_0
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/events/EventLandingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/df;->a:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/twitter/android/events/EventLandingFragment;->aa:J

    .line 161
    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcha;->a:[Ljava/lang/String;

    const-string/jumbo v4, "search_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/twitter/android/events/EventLandingFragment;->s:J

    .line 164
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v0

    .line 157
    :cond_0
    const-string/jumbo v6, "type_id ASC, _id ASC"

    goto :goto_0
.end method

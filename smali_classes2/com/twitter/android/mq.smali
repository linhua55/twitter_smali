.class public Lcom/twitter/android/mq;
.super Lcom/twitter/android/widget/bl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/widget/bl",
        "<",
        "Lcom/twitter/android/mv;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/android/qh;

.field private final d:I

.field private final e:Lcom/twitter/library/client/bk;

.field private final f:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final g:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final h:I

.field private final i:F

.field private j:Lcom/twitter/model/core/TwitterUser;

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/mv;IIZ)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0, p2, p4}, Lcom/twitter/android/widget/bl;-><init>(Landroid/widget/ListAdapter;I)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/mq;->k:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/mq;->m:Landroid/view/View$OnClickListener;

    .line 47
    invoke-virtual {p2, p5}, Lcom/twitter/android/mv;->e(Z)V

    .line 48
    invoke-virtual {p2, p5}, Lcom/twitter/android/mv;->b(Z)V

    .line 49
    invoke-virtual {p2, p5}, Lcom/twitter/android/mv;->c(Z)V

    .line 51
    iput-object p1, p0, Lcom/twitter/android/mq;->b:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/twitter/app/users/q;

    invoke-direct {v0}, Lcom/twitter/app/users/q;-><init>()V

    .line 53
    invoke-virtual {v0, p3}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/twitter/android/qh;

    const v2, 0x7f0a06ad

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/twitter/android/qh;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/twitter/android/mq;->c:Lcom/twitter/android/qh;

    .line 59
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/mq;->e:Lcom/twitter/library/client/bk;

    .line 60
    iput p3, p0, Lcom/twitter/android/mq;->d:I

    .line 62
    invoke-virtual {p0}, Lcom/twitter/android/mq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040322

    :goto_0
    iput v0, p0, Lcom/twitter/android/mq;->f:I

    .line 70
    :goto_1
    const v0, 0x7f040066

    iput v0, p0, Lcom/twitter/android/mq;->h:I

    .line 71
    iget-object v0, p0, Lcom/twitter/android/mq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/mq;->i:F

    .line 72
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f04033c

    :goto_2
    iput v0, p0, Lcom/twitter/android/mq;->g:I

    .line 74
    iget-object v0, p0, Lcom/twitter/android/mq;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/mv;

    invoke-virtual {v0}, Lcom/twitter/android/mv;->b()V

    .line 75
    return-void

    .line 63
    :cond_0
    const v0, 0x7f040129

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f04033a

    :goto_3
    iput v0, p0, Lcom/twitter/android/mq;->f:I

    goto :goto_1

    :cond_2
    const v0, 0x7f0402bc

    goto :goto_3

    .line 72
    :cond_3
    const v0, 0x7f0402bf

    goto :goto_2
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 80
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/android/mq;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 81
    if-eqz p4, :cond_0

    .line 82
    invoke-virtual {v0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/twitter/android/mq;->l:Z

    invoke-static {v1}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 158
    iget v0, p0, Lcom/twitter/android/mq;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 175
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/twitter/android/mq;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    .line 160
    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/mq;->b:Landroid/content/Context;

    const v1, 0x7f0a09b6

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/mq;->f:I

    .line 160
    invoke-static {p1, p2, v0, v1}, Lcom/twitter/android/mq;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/twitter/android/mq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 163
    check-cast v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    .line 164
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    .line 165
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setGroupStyle(I)V

    goto :goto_0

    .line 170
    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/mq;->b:Landroid/content/Context;

    const v1, 0x7f0a068a

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/mq;->h:I

    iget-object v4, p0, Lcom/twitter/android/mq;->m:Landroid/view/View$OnClickListener;

    const v5, 0x7f13001f

    move-object v0, p1

    move-object v1, p2

    .line 170
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/mq;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method protected a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected a(I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 133
    iget-object v0, p0, Lcom/twitter/android/mq;->j:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/twitter/android/mq;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/mv;

    invoke-virtual {v0, p1}, Lcom/twitter/android/mv;->getItemId(I)J

    move-result-wide v2

    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/mq;->b:Landroid/content/Context;

    const-class v4, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "user_id"

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/16 v4, 0xa

    .line 137
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "association"

    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v5, 0x5

    .line 141
    invoke-virtual {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v5, p0, Lcom/twitter/android/mq;->j:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v5, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 142
    invoke-virtual {v0, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-boolean v5, p0, Lcom/twitter/android/mq;->l:Z

    .line 143
    invoke-static {v5}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v5, "similar_to"

    .line 144
    invoke-virtual {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    .line 139
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/twitter/android/mq;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/mv;

    iget-object v0, v0, Lcom/twitter/android/mv;->g:Lcom/twitter/library/util/FriendshipCache;

    .line 146
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->j(J)Ljava/lang/Integer;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v2, "friendship"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    move-object v0, v1

    .line 152
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/twitter/android/mq;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/mv;

    new-instance v1, Lcmb;

    invoke-direct {v1, p1}, Lcmb;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/mv;->a(Lcmf;)Lcmf;

    .line 218
    invoke-virtual {p0}, Lcom/twitter/android/mq;->notifyDataSetChanged()V

    .line 219
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/twitter/android/mq;->m:Landroid/view/View$OnClickListener;

    .line 214
    return-void
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;Z)V
    .locals 4

    .prologue
    .line 197
    iput-boolean p2, p0, Lcom/twitter/android/mq;->l:Z

    .line 198
    iget-object v0, p0, Lcom/twitter/android/mq;->j:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/mq;->j:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/TwitterUser;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/mq;->c:Lcom/twitter/android/qh;

    iget-object v0, v0, Lcom/twitter/android/qh;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/mq;->c:Lcom/twitter/android/qh;

    iget-object v1, v1, Lcom/twitter/android/qh;->c:Landroid/content/Intent;

    invoke-static {v1}, Lcom/twitter/app/users/q;->a(Landroid/content/Intent;)Lcom/twitter/app/users/q;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/app/users/q;->c(Ljava/lang/String;)Lcom/twitter/app/users/q;

    move-result-object v1

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 203
    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/users/q;->a(J)Lcom/twitter/app/users/q;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/mq;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 204
    iput-object p1, p0, Lcom/twitter/android/mq;->j:Lcom/twitter/model/core/TwitterUser;

    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/mq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 182
    iget v0, p0, Lcom/twitter/android/mq;->d:I

    packed-switch v0, :pswitch_data_0

    .line 190
    iget v0, p0, Lcom/twitter/android/mq;->g:I

    iget-object v1, p0, Lcom/twitter/android/mq;->c:Lcom/twitter/android/qh;

    iget v2, p0, Lcom/twitter/android/mq;->i:F

    invoke-static {v0, p1, p2, v1, v2}, Lcom/twitter/android/qi;->a(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/qh;F)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 184
    :pswitch_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method protected b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/android/mq;->c:Lcom/twitter/android/qh;

    iget-object v0, v0, Lcom/twitter/android/qh;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-boolean v0, p0, Lcom/twitter/android/mq;->k:Z

    if-nez v0, :cond_0

    .line 97
    iget v0, p0, Lcom/twitter/android/mq;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 107
    const/4 v0, 0x0

    .line 111
    :goto_0
    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/mq;->e:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 113
    invoke-direct {p0, v0}, Lcom/twitter/android/mq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 114
    iput-boolean v4, p0, Lcom/twitter/android/mq;->k:Z

    .line 118
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/widget/bl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 99
    :sswitch_0
    const-string/jumbo v0, "similar_to:::impression"

    goto :goto_0

    .line 103
    :sswitch_1
    const-string/jumbo v0, "user_similarities_list:::impression"

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

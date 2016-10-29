.class public Lcom/twitter/android/jj;
.super Lcvt;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/client/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lckn;",
        ">;",
        "Lcom/twitter/android/client/v;"
    }
.end annotation


# instance fields
.field private final a:Laom;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final d:Lcom/twitter/library/client/bk;

.field private final e:Lcom/twitter/android/r;

.field private final f:Laof;

.field private final g:Lanw;

.field private final h:Laoa;

.field private final i:Laob;

.field private final j:Laol;

.field private final k:Laok;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/android/util/ah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/r;Landroid/view/View$OnClickListener;Laom;Lcom/twitter/app/main/r;)V
    .locals 6

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object p4, p0, Lcom/twitter/android/jj;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 82
    iput-object p5, p0, Lcom/twitter/android/jj;->e:Lcom/twitter/android/r;

    .line 83
    iput-object p6, p0, Lcom/twitter/android/jj;->b:Landroid/view/View$OnClickListener;

    .line 84
    iput-object p7, p0, Lcom/twitter/android/jj;->a:Laom;

    .line 85
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/jj;->d:Lcom/twitter/library/client/bk;

    .line 87
    new-instance v0, Laof;

    iget-object v2, p0, Lcom/twitter/android/jj;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v3, p0, Lcom/twitter/android/jj;->b:Landroid/view/View$OnClickListener;

    move-object v1, p2

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Laof;-><init>(Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/view/View$OnClickListener;Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    iput-object v0, p0, Lcom/twitter/android/jj;->f:Laof;

    .line 89
    new-instance v0, Lanw;

    invoke-virtual {p0}, Lcom/twitter/android/jj;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/notificationtimeline/o;

    .line 90
    invoke-virtual {p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/twitter/android/notificationtimeline/o;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lanw;-><init>(Landroid/content/res/Resources;Lcom/twitter/android/notificationtimeline/o;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    iput-object v0, p0, Lcom/twitter/android/jj;->g:Lanw;

    .line 92
    new-instance v0, Laoa;

    iget-object v1, p0, Lcom/twitter/android/jj;->e:Lcom/twitter/android/r;

    invoke-direct {v0, v1, p3}, Laoa;-><init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    iput-object v0, p0, Lcom/twitter/android/jj;->h:Laoa;

    .line 93
    new-instance v0, Laob;

    new-instance v1, Lcom/twitter/android/notificationtimeline/l;

    iget-object v2, p0, Lcom/twitter/android/jj;->d:Lcom/twitter/library/client/bk;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/jj;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v1, v2, v3, v4, p8}, Lcom/twitter/android/notificationtimeline/l;-><init>(Lcom/twitter/library/client/bk;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/app/main/r;)V

    invoke-direct {v0, p5, p3, v1}, Laob;-><init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;Lcom/twitter/android/notificationtimeline/l;)V

    iput-object v0, p0, Lcom/twitter/android/jj;->i:Laob;

    .line 96
    new-instance v0, Laol;

    invoke-direct {v0, p7, p5, p3}, Laol;-><init>(Laom;Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    iput-object v0, p0, Lcom/twitter/android/jj;->j:Laol;

    .line 98
    new-instance v0, Laok;

    invoke-direct {v0, p7, p5, p3}, Laok;-><init>(Laom;Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    iput-object v0, p0, Lcom/twitter/android/jj;->k:Laok;

    .line 100
    return-void
.end method

.method private static a(Lckw;)I
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v1, v0, Lcle;->d:I

    .line 243
    packed-switch v1, :pswitch_data_0

    .line 270
    :pswitch_0
    sget-object v0, Lckl;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Item view type requested for unsupported event type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :pswitch_1
    const/4 v0, 0x2

    .line 266
    :goto_1
    return v0

    .line 257
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_1

    .line 260
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_1

    .line 266
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_1

    .line 272
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 133
    invoke-static {p1}, Lcom/twitter/android/jj;->a(Lckw;)I

    move-result v0

    .line 134
    packed-switch v0, :pswitch_data_0

    .line 152
    iget-object v0, p1, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v1, v0, Lcle;->d:I

    .line 153
    sget-object v0, Lckl;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New view requested unsupported view type for event type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/jj;->h:Laoa;

    invoke-virtual {v0, p1, p2}, Laoa;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 158
    :goto_1
    return-object v0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/jj;->f:Laof;

    invoke-virtual {v0, p1, p2}, Laof;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/jj;->g:Lanw;

    invoke-virtual {v0, p1, p2}, Lanw;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 148
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/jj;->j:Laol;

    invoke-virtual {v0, p1, p2}, Laol;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 155
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/View;Lckw;I)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p2, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    .line 193
    invoke-static {p2}, Lcom/twitter/android/jj;->a(Lckw;)I

    move-result v0

    .line 194
    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/jj;->h:Laoa;

    invoke-virtual {v0, p1, p2, p3}, Laoa;->a(Landroid/view/View;Lckw;I)V

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/jj;->f:Laof;

    invoke-virtual {v0, p1, p2, p3}, Laof;->a(Landroid/view/View;Lckw;I)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/jj;->g:Lanw;

    invoke-virtual {v0, p1, p2, p3}, Lanw;->a(Landroid/view/View;Lckw;I)V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/jj;->j:Laol;

    invoke-virtual {v0, p1, p2, p3}, Laol;->a(Landroid/view/View;Lckw;I)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lckn;)V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unsupported ActivityItem"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "item"

    .line 127
    invoke-virtual {v0, v1, p0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 128
    return-void
.end method


# virtual methods
.method public a(Lckn;)I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p1, Lckn;->a:Lckm;

    iget v0, v0, Lckm;->a:I

    packed-switch v0, :pswitch_data_0

    .line 235
    invoke-static {p1}, Lcom/twitter/android/jj;->b(Lckn;)V

    .line 238
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 226
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 229
    :pswitch_1
    check-cast p1, Lckw;

    invoke-static {p1}, Lcom/twitter/android/jj;->a(Lckw;)I

    move-result v0

    goto :goto_0

    .line 232
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lckn;

    invoke-virtual {p0, p1}, Lcom/twitter/android/jj;->a(Lckn;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lckn;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p2, Lckn;->a:Lckm;

    iget v0, v0, Lckm;->a:I

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-static {p2}, Lcom/twitter/android/jj;->b(Lckn;)V

    .line 122
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/jj;->i:Laob;

    check-cast p2, Lckz;

    invoke-virtual {v0, p2, p3}, Laob;->a(Lckz;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_1
    check-cast p2, Lckw;

    invoke-direct {p0, p2, p3}, Lcom/twitter/android/jj;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/jj;->k:Laok;

    check-cast p2, Lclb;

    invoke-virtual {v0, p2, p3}, Laok;->a(Lclb;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    check-cast p2, Lckn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/jj;->a(Landroid/content/Context;Lckn;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/twitter/android/jj;->h:Laoa;

    invoke-virtual {v0, p1, p2}, Laoa;->a(J)V

    .line 290
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Lckn;)V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    const-string/jumbo v1, "Unimplemented bindView() override called"

    invoke-static {v0, v1}, Lcom/twitter/util/j;->a(ZLjava/lang/String;)Z

    .line 167
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Lckn;I)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p3, Lckn;->a:Lckm;

    iget v0, v0, Lckm;->a:I

    packed-switch v0, :pswitch_data_0

    .line 186
    invoke-static {p3}, Lcom/twitter/android/jj;->b(Lckn;)V

    .line 189
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/jj;->i:Laob;

    check-cast p3, Lckz;

    invoke-virtual {v0, p1, p3, p4}, Laob;->a(Landroid/view/View;Lckz;I)V

    goto :goto_0

    .line 178
    :pswitch_1
    check-cast p3, Lckw;

    invoke-direct {p0, p1, p3, p4}, Lcom/twitter/android/jj;->a(Landroid/view/View;Lckw;I)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/jj;->k:Laok;

    check-cast p3, Lclb;

    invoke-virtual {v0, p1, p3, p4}, Laok;->a(Landroid/view/View;Lclb;I)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p3, Lckn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/jj;->a(Landroid/view/View;Landroid/content/Context;Lckn;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 40
    check-cast p3, Lckn;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/android/jj;->a(Landroid/view/View;Landroid/content/Context;Lckn;I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/android/jj;->a:Laom;

    invoke-virtual {v0, p1}, Laom;->a(Z)V

    .line 104
    return-void
.end method

.method public ah_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/twitter/android/jj;->h:Laoa;

    invoke-virtual {v0}, Laoa;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/twitter/android/jj;->h:Laoa;

    invoke-virtual {v0}, Laoa;->b()V

    .line 299
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/twitter/android/jj;->a:Laom;

    invoke-virtual {v0, p1}, Laom;->b(Z)V

    .line 220
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/twitter/android/jj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckn;

    .line 280
    if-eqz v0, :cond_0

    iget-object v0, v0, Lckn;->b:Lcks;

    invoke-virtual {v0}, Lcks;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcvt;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x5

    return v0
.end method

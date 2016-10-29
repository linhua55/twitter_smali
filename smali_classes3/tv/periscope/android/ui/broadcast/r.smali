.class public Ltv/periscope/android/ui/broadcast/r;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/ad;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Ltv/periscope/android/ui/love/HeartView;

.field public f:Ltv/periscope/model/aa;

.field public g:Ljava/lang/String;

.field private final h:Ldmy;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;Ldmy;)V
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 402
    sget v0, Ltv/periscope/android/library/l;->profile_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->b:Landroid/widget/ImageView;

    .line 403
    sget v0, Ltv/periscope/android/library/l;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->c:Landroid/widget/TextView;

    .line 404
    sget v0, Ltv/periscope/android/library/l;->heart_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->d:Landroid/widget/TextView;

    .line 405
    sget v0, Ltv/periscope/android/library/l;->baby_heart:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/love/HeartView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->e:Ltv/periscope/android/ui/love/HeartView;

    .line 406
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/r;->h:Ldmy;

    .line 408
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;Ldmy;)Ltv/periscope/android/ui/broadcast/r;
    .locals 3

    .prologue
    .line 386
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_info_viewer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 388
    new-instance v1, Ltv/periscope/android/ui/broadcast/r;

    invoke-direct {v1, v0, p2, p3}, Ltv/periscope/android/ui/broadcast/r;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;Ldmy;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Ltv/periscope/android/ui/broadcast/ad;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/r;->a(Ltv/periscope/android/ui/broadcast/ad;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/ad;)V
    .locals 11

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x0

    .line 412
    iget-object v0, p1, Ltv/periscope/android/ui/broadcast/ad;->b:Ljava/lang/String;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->g:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/ad;->b()Ltv/periscope/android/data/f;

    move-result-object v1

    .line 415
    iget-object v0, p1, Ltv/periscope/android/ui/broadcast/ad;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ltv/periscope/android/data/f;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ltv/periscope/android/api/PsUser;

    .line 416
    if-nez v4, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Viewer isn\'t in cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lh;->a(Ljava/lang/Throwable;)V

    .line 418
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->c:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->c:Landroid/widget/TextView;

    iget-object v2, v4, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 426
    iget-object v3, p1, Ltv/periscope/android/ui/broadcast/ad;->a:Ljava/lang/String;

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/r;->g:Ljava/lang/String;

    iget-boolean v6, p1, Ltv/periscope/android/ui/broadcast/ad;->c:Z

    invoke-interface {v1, v3, v5, v6}, Ltv/periscope/android/data/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ltv/periscope/model/aa;

    move-result-object v3

    .line 428
    iput-object v3, p0, Ltv/periscope/android/ui/broadcast/r;->f:Ltv/periscope/model/aa;

    .line 432
    invoke-virtual {v4}, Ltv/periscope/android/api/PsUser;->getParticipantIndex()I

    move-result v1

    .line 433
    if-eqz v3, :cond_4

    .line 434
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/r;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/r;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 437
    :cond_1
    iget-boolean v1, p1, Ltv/periscope/android/ui/broadcast/ad;->c:Z

    if-nez v1, :cond_2

    .line 438
    iget v1, v3, Ltv/periscope/model/aa;->a:I

    .line 439
    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/r;->b:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Ltv/periscope/android/util/s;->b(Landroid/content/res/Resources;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 444
    :goto_1
    iget v5, v3, Ltv/periscope/model/aa;->b:I

    if-lez v5, :cond_3

    .line 445
    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/r;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/r;->d:Landroid/widget/TextView;

    sget v6, Ltv/periscope/android/library/p;->ps__num_hearts:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget v3, v3, Ltv/periscope/model/aa;->b:I

    int-to-long v8, v3

    .line 447
    invoke-static {v2, v8, v9, v10}, Ltv/periscope/android/util/r;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    .line 446
    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-static {v2, v1}, Ltv/periscope/android/util/s;->a(Landroid/content/res/Resources;I)I

    move-result v2

    .line 449
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/r;->e:Ltv/periscope/android/ui/love/HeartView;

    sget v5, Ltv/periscope/android/library/k;->ps__ic_heart_profile_border:I

    sget v6, Ltv/periscope/android/library/k;->ps__ic_heart_profile:I

    invoke-virtual {v3, v2, v5, v6}, Ltv/periscope/android/ui/love/HeartView;->a(III)V

    .line 451
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/r;->e:Ltv/periscope/android/ui/love/HeartView;

    invoke-virtual {v2, v10}, Ltv/periscope/android/ui/love/HeartView;->setVisibility(I)V

    move v5, v1

    .line 460
    :goto_2
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/r;->h:Ldmy;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/r;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ltv/periscope/android/api/PsUser;->getProfileUrlSmall()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Ltv/periscope/android/util/b;->a(Landroid/content/Context;Ldmy;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 441
    :cond_2
    const/4 v1, -0x1

    .line 442
    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/r;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_1

    .line 453
    :cond_3
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/r;->e:Ltv/periscope/android/ui/love/HeartView;

    invoke-virtual {v2, v7}, Ltv/periscope/android/ui/love/HeartView;->setVisibility(I)V

    .line 454
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/r;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move v5, v1

    goto :goto_2

    .line 457
    :cond_4
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/r;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move v5, v1

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/r;->a:Ltv/periscope/android/ui/broadcast/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/r;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/c;->a(Ljava/lang/String;)V

    .line 467
    return-void
.end method

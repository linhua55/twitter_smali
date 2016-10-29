.class public Ltv/periscope/android/ui/broadcast/f;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/s;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final b:Ltv/periscope/android/view/ActionSheetItem;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private e:Ldnc;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldnc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 254
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/f;->c:Landroid/view/View;

    .line 255
    sget v0, Ltv/periscope/android/library/l;->default_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/ActionSheetItem;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->b:Ltv/periscope/android/view/ActionSheetItem;

    .line 256
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->b:Ltv/periscope/android/view/ActionSheetItem;

    invoke-virtual {v0, p0}, Ltv/periscope/android/view/ActionSheetItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v0, Ltv/periscope/android/library/l;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->d:Landroid/view/View;

    .line 258
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/f;
    .locals 3

    .prologue
    .line 241
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_info_action:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 243
    new-instance v1, Ltv/periscope/android/ui/broadcast/f;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/f;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->b:Ltv/periscope/android/view/ActionSheetItem;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/f;->e:Ldnc;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/f;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldnc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/f;->e:Ldnc;

    .line 282
    invoke-virtual {v2}, Ldnc;->a()I

    move-result v2

    .line 281
    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/view/ActionSheetItem;->a(Ljava/lang/CharSequence;I)V

    .line 283
    return-void
.end method

.method private a(Ldnc;)V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p1}, Ldnc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/f;->a()V

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Ltv/periscope/android/ui/broadcast/s;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/f;->a(Ltv/periscope/android/ui/broadcast/s;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/s;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/s;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnc;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->e:Ldnc;

    .line 265
    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/f;->f:Ljava/util/List;

    .line 266
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/f;->a()V

    .line 268
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/s;->c()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    move-result-object v0

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->c:Landroid/view/View;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/f;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/i;->ps__app_background_secondary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 288
    sget v1, Ltv/periscope/android/library/l;->more:I

    if-ne v0, v1, :cond_1

    .line 289
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->a:Ltv/periscope/android/ui/broadcast/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/f;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/c;->a(Ljava/util/List;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    sget v1, Ltv/periscope/android/library/l;->default_action:I

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/f;->e:Ldnc;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/f;->a(Ldnc;)V

    goto :goto_0
.end method

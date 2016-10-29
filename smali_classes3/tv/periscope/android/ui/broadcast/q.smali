.class public Ltv/periscope/android/ui/broadcast/q;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/ac;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private f:Ldnc;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 320
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/q;->b:Landroid/view/View;

    .line 321
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->b:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->d:Landroid/widget/ImageView;

    .line 322
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->b:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->c:Landroid/widget/TextView;

    .line 323
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->b:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->e:Landroid/widget/TextView;

    .line 324
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/q;
    .locals 3

    .prologue
    .line 313
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_action_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 315
    new-instance v1, Ltv/periscope/android/ui/broadcast/q;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/q;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method

.method private a(Ldnc;)V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldnc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldnc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/q;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/q;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Ldnc;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/q;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Ldnc;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 356
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->c:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/q;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Ldnc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 302
    check-cast p1, Ltv/periscope/android/ui/broadcast/ac;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/q;->a(Ltv/periscope/android/ui/broadcast/ac;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/ac;)V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/ac;->b()Ldnc;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->f:Ldnc;

    .line 330
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->f:Ldnc;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->f:Ldnc;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/q;->a(Ldnc;)V

    .line 333
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 338
    sget v1, Ltv/periscope/android/library/l;->broadcast_action_item:I

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->f:Ldnc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->f:Ldnc;

    invoke-virtual {v0}, Ldnc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/q;->f:Ldnc;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/q;->a(Ldnc;)V

    .line 343
    :cond_0
    return-void
.end method

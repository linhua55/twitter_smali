.class public Ltv/periscope/android/ui/broadcast/g;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/u;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Ltv/periscope/android/data/f;

.field private final d:Ldmy;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/TextView;

.field private final g:Ltv/periscope/android/view/UsernameView;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;Ltv/periscope/android/data/f;Ldmy;)V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 196
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/g;->b:Landroid/view/View;

    .line 197
    sget v0, Ltv/periscope/android/library/l;->broadcaster:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/g;->f:Landroid/widget/TextView;

    .line 198
    sget v0, Ltv/periscope/android/library/l;->header_profile_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/g;->e:Landroid/widget/ImageView;

    .line 199
    sget v0, Ltv/periscope/android/library/l;->broadcaster_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/UsernameView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/g;->g:Ltv/periscope/android/view/UsernameView;

    .line 200
    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/g;->c:Ltv/periscope/android/data/f;

    .line 201
    iput-object p4, p0, Ltv/periscope/android/ui/broadcast/g;->d:Ldmy;

    .line 202
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;Ltv/periscope/android/data/f;Ldmy;)Ltv/periscope/android/ui/broadcast/g;
    .locals 3

    .prologue
    .line 180
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcaster_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 182
    new-instance v1, Ltv/periscope/android/ui/broadcast/g;

    invoke-direct {v1, v0, p2, p3, p4}, Ltv/periscope/android/ui/broadcast/g;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;Ltv/periscope/android/data/f;Ldmy;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 175
    check-cast p1, Ltv/periscope/android/ui/broadcast/u;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/g;->a(Ltv/periscope/android/ui/broadcast/u;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/u;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 207
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/g;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/u;->b()Ltv/periscope/model/o;

    move-result-object v4

    .line 211
    invoke-virtual {v4}, Ltv/periscope/model/o;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/g;->h:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/g;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Ltv/periscope/model/o;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/g;->c:Ltv/periscope/android/data/f;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/g;->h:Ljava/lang/String;

    invoke-interface {v2, v3}, Ltv/periscope/android/data/f;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/g;->b:Landroid/view/View;

    sget v3, Ltv/periscope/android/library/i;->ps__app_background_secondary:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    :cond_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/g;->c:Ltv/periscope/android/data/f;

    invoke-virtual {v4}, Ltv/periscope/model/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ltv/periscope/android/data/f;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/api/PsUser;

    .line 219
    if-eqz v1, :cond_1

    iget-object v2, v1, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    invoke-static {v2}, Ldod;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/g;->g:Ltv/periscope/android/view/UsernameView;

    sget v2, Ltv/periscope/android/library/p;->ps__broadcaster:I

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/UsernameView;->setText(I)V

    .line 221
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/g;->g:Ltv/periscope/android/view/UsernameView;

    invoke-virtual {v1, v5, v5}, Ltv/periscope/android/view/UsernameView;->a(ZZ)V

    .line 227
    :goto_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/g;->d:Ldmy;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/g;->e:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ltv/periscope/model/o;->t()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v4}, Ltv/periscope/model/o;->s()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-static/range {v0 .. v5}, Ltv/periscope/android/util/b;->a(Landroid/content/Context;Ldmy;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    return-void

    .line 223
    :cond_2
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/g;->g:Ltv/periscope/android/view/UsernameView;

    iget-object v3, v1, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltv/periscope/android/view/UsernameView;->setUsername(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/g;->g:Ltv/periscope/android/view/UsernameView;

    iget-boolean v3, v1, Ltv/periscope/android/api/PsUser;->isVerified:Z

    iget-boolean v1, v1, Ltv/periscope/android/api/PsUser;->isBluebirdUser:Z

    invoke-virtual {v2, v3, v1}, Ltv/periscope/android/view/UsernameView;->a(ZZ)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/g;->a:Ltv/periscope/android/ui/broadcast/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/g;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/c;->a(Ljava/lang/String;)V

    .line 234
    return-void
.end method

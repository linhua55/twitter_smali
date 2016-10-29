.class Lcom/twitter/android/moments/ui/fullscreen/fy;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/fb;

.field private final d:Lahd;

.field private final e:Lrx/t;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lrx/ap;

.field private h:Z


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Lrx/o;Lcom/twitter/android/moments/ui/fullscreen/fb;Lahd;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;",
            "Lcom/twitter/android/moments/ui/fullscreen/fb;",
            "Lahd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .line 55
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/fullscreen/fy;-><init>(Landroid/view/LayoutInflater;Lrx/o;Lcom/twitter/android/moments/ui/fullscreen/fb;Lahd;Lrx/t;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/view/LayoutInflater;Lrx/o;Lcom/twitter/android/moments/ui/fullscreen/fb;Lahd;Lrx/t;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;",
            "Lcom/twitter/android/moments/ui/fullscreen/fb;",
            "Lahd;",
            "Lrx/t;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->f:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->a:Landroid/view/LayoutInflater;

    .line 64
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->b:Lrx/o;

    .line 65
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->c:Lcom/twitter/android/moments/ui/fullscreen/fb;

    .line 66
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->d:Lahd;

    .line 67
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->e:Lrx/t;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/fy;)Lcom/twitter/android/moments/ui/fullscreen/fb;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->c:Lcom/twitter/android/moments/ui/fullscreen/fb;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->h:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/MomentModule;

    .line 172
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->d:Lahd;

    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    invoke-virtual {v2, v0}, Lahd;->a(Lcom/twitter/model/moments/ad;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->f:Ljava/util/List;

    .line 176
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->h:Z

    .line 87
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->d()V

    .line 88
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->g:Lrx/ap;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->g:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->b:Lrx/o;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->e:Lrx/t;

    .line 75
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/fz;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/fz;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fy;Landroid/view/ViewGroup;)V

    .line 76
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->g:Lrx/ap;

    .line 83
    return-void
.end method

.method a(Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 11
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 105
    const/4 v1, 0x0

    .line 108
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v5

    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->f:Ljava/util/List;

    .line 111
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/moments/viewmodels/MomentModule;

    .line 113
    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v7

    .line 115
    iget-wide v8, v7, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    if-nez v3, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 118
    new-instance v1, Lbiv;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Got duplicate moment in suggestions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lbix;->a(Lbiv;)V

    move v3, v0

    goto :goto_0

    .line 122
    :cond_1
    iget-wide v8, v7, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    if-nez v2, :cond_4

    .line 126
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->c:Lcom/twitter/android/moments/ui/fullscreen/fb;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/a;

    invoke-interface {v4, v2}, Lcom/twitter/android/moments/ui/fullscreen/fb;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    .line 127
    const/4 v4, 0x1

    .line 130
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->a:Landroid/view/LayoutInflater;

    const v8, 0x7f0401f3

    const/4 v9, 0x0

    .line 131
    invoke-virtual {v2, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 132
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->a:Landroid/view/LayoutInflater;

    const v9, 0x7f0400aa

    const/4 v10, 0x0

    invoke-virtual {v2, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1200e6

    .line 135
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 134
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    const v2, 0x7f1304dd

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/media/ui/image/MediaImageView;

    .line 138
    invoke-static {v1, v2}, Lcom/twitter/android/moments/data/x;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;Lcom/twitter/media/ui/image/MediaImageView;)V

    .line 140
    const v2, 0x7f1304af

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v9, v7, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v2, 0x7f1304b1

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 144
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/twitter/android/moments/data/ag;->a(Landroid/content/res/Resources;Lcom/twitter/android/moments/viewmodels/MomentModule;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {v8}, Lamc;->b(Landroid/view/View;)Lamc;

    move-result-object v1

    invoke-virtual {v1, v7}, Lamc;->a(Lcom/twitter/model/moments/ad;)V

    .line 147
    const v1, 0x7f1304dc

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/ui/widget/BadgeView;

    .line 148
    invoke-virtual {v7}, Lcom/twitter/model/moments/ad;->a()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 149
    const v9, 0x7f020483

    const/4 v10, 0x1

    invoke-static {v7, v1, v9, v10}, Lcom/twitter/android/moments/ui/h;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/ui/widget/BadgeView;IZ)V

    .line 151
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_2
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ga;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/ga;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fy;Ljava/util/Map$Entry;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->d()V

    move v2, v4

    .line 166
    goto/16 :goto_0

    .line 153
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Lcom/twitter/ui/widget/BadgeView;->setVisibility(I)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 167
    :cond_3
    return-void

    :cond_4
    move v4, v2

    goto/16 :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->h:Z

    .line 92
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->g:Lrx/ap;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->g:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fy;->g:Lrx/ap;

    .line 99
    :cond_0
    return-void
.end method

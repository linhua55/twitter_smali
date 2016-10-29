.class public Ltv/periscope/android/ui/broadcast/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ltv/periscope/android/ui/broadcast/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ltv/periscope/android/ui/broadcast/c;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/ui/broadcast/m;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ltv/periscope/android/data/f;

.field private final e:Ldmy;

.field private final f:Ltv/periscope/android/ui/broadcast/bl;

.field private g:Ltv/periscope/android/ui/broadcast/af;


# virtual methods
.method public a(I)Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->g:Ltv/periscope/android/ui/broadcast/af;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/af;->b(I)Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ltv/periscope/android/ui/broadcast/d;
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->values()[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    move-result-object v0

    aget-object v0, v0, p2

    .line 109
    sget-object v1, Ltv/periscope/android/ui/broadcast/b;->a:[I

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Unsupported view type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/a;->d:Ltv/periscope/android/data/f;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/a;->e:Ldmy;

    invoke-static {v0, p1, v1, v2, v3}, Ltv/periscope/android/ui/broadcast/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;Ltv/periscope/android/data/f;Ldmy;)Ltv/periscope/android/ui/broadcast/g;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 114
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/i;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/i;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/m;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/m;

    move-result-object v0

    .line 119
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/f;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/f;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/q;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/q;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_5
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/j;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/j;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_6
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/a;->e:Ldmy;

    invoke-static {v0, p1, v1, v2}, Ltv/periscope/android/ui/broadcast/r;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;Ldmy;)Ltv/periscope/android/ui/broadcast/r;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_7
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/o;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/o;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_8
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/k;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/k;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_9
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/p;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/p;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_a
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/h;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_b
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/ui/broadcast/l;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/l;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_c
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->f:Ltv/periscope/android/ui/broadcast/bl;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->f:Ltv/periscope/android/ui/broadcast/bl;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/a;->a:Landroid/content/Context;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/a;->b:Ltv/periscope/android/ui/broadcast/c;

    invoke-interface {v0, v1, p1, v2}, Ltv/periscope/android/ui/broadcast/bl;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/d;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StatsGraph was added, but no GraphProvider was supplied"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public a(Ltv/periscope/android/ui/broadcast/d;I)V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p2}, Ltv/periscope/android/ui/broadcast/a;->a(I)Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/periscope/android/ui/broadcast/d;->a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V

    .line 165
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/a;->g:Ltv/periscope/android/ui/broadcast/af;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/af;->a()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/a;->a(I)Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;->a()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ltv/periscope/android/ui/broadcast/d;

    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/a;->a(Ltv/periscope/android/ui/broadcast/d;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/a;->a(Landroid/view/ViewGroup;I)Ltv/periscope/android/ui/broadcast/d;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/twitter/android/media/stickers/m;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcpf;

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Lcpf;F)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/twitter/android/media/stickers/m;->a:Lcpf;

    .line 98
    iput p2, p0, Lcom/twitter/android/media/stickers/m;->e:F

    .line 99
    return-void
.end method

.method public constructor <init>(Lcpo;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lcpo;->b:Lcpf;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/m;->a:Lcpf;

    .line 89
    iget-object v0, p1, Lcpo;->c:Lcps;

    .line 90
    iget v1, v0, Lcps;->b:F

    iput v1, p0, Lcom/twitter/android/media/stickers/m;->d:F

    .line 91
    iget v1, v0, Lcps;->d:F

    iput v1, p0, Lcom/twitter/android/media/stickers/m;->b:F

    .line 92
    iget v1, v0, Lcps;->e:F

    iput v1, p0, Lcom/twitter/android/media/stickers/m;->c:F

    .line 93
    iget v0, v0, Lcps;->c:F

    iput v0, p0, Lcom/twitter/android/media/stickers/m;->e:F

    .line 94
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/twitter/android/media/stickers/m;->d:F

    return v0
.end method

.method public a(IFFLcom/twitter/util/math/c;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 124
    iget v0, p0, Lcom/twitter/android/media/stickers/m;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 125
    iget v1, p0, Lcom/twitter/android/media/stickers/m;->b:F

    add-float v2, v1, v0

    .line 126
    iget v1, p0, Lcom/twitter/android/media/stickers/m;->c:F

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/m;->b()F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    .line 129
    invoke-static {p1}, Lcom/twitter/util/ui/r;->a(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 146
    iget v1, p4, Lcom/twitter/util/math/c;->d:F

    sub-float v1, v2, v1

    .line 147
    iget v2, p4, Lcom/twitter/util/math/c;->e:F

    div-float/2addr v2, p2

    sub-float/2addr v0, v2

    .line 151
    :goto_0
    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 152
    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 153
    invoke-virtual {p0, p3}, Lcom/twitter/android/media/stickers/m;->a(F)Lcom/twitter/util/math/Size;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v1, v0}, Lcom/twitter/util/math/Size;->b(II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 131
    :sswitch_0
    iget v1, p4, Lcom/twitter/util/math/c;->d:F

    sub-float v1, v4, v1

    div-float/2addr v1, p2

    sub-float/2addr v1, v0

    .line 132
    iget v0, p4, Lcom/twitter/util/math/c;->e:F

    sub-float v0, v2, v0

    .line 133
    goto :goto_0

    .line 136
    :sswitch_1
    iget v1, p4, Lcom/twitter/util/math/c;->d:F

    sub-float v1, v4, v1

    sub-float/2addr v1, v2

    .line 137
    iget v2, p4, Lcom/twitter/util/math/c;->e:F

    sub-float v2, v4, v2

    div-float/2addr v2, p2

    sub-float v0, v2, v0

    .line 138
    goto :goto_0

    .line 141
    :sswitch_2
    iget v1, p4, Lcom/twitter/util/math/c;->d:F

    div-float/2addr v1, p2

    sub-float v1, v0, v1

    .line 142
    iget v0, p4, Lcom/twitter/util/math/c;->e:F

    sub-float v0, v4, v0

    sub-float/2addr v0, v2

    .line 143
    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public a(F)Lcom/twitter/util/math/Size;
    .locals 3

    .prologue
    .line 102
    iget v0, p0, Lcom/twitter/android/media/stickers/m;->d:F

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/m;->b()F

    move-result v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/twitter/android/media/stickers/m;->d:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v0

    return-object v0
.end method

.method public a(FF)V
    .locals 7

    .prologue
    const v6, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 162
    iget v1, p0, Lcom/twitter/android/media/stickers/m;->d:F

    .line 163
    div-float v0, p1, p2

    .line 165
    mul-float v2, v4, v0

    sub-float v2, v1, v2

    .line 166
    cmpg-float v3, v2, v6

    if-gtz v3, :cond_0

    cmpl-float v3, v0, v5

    if-gtz v3, :cond_1

    :cond_0
    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    .line 168
    :cond_1
    cmpg-float v0, v1, v6

    if-gtz v0, :cond_3

    sub-float v0, v1, v6

    div-float/2addr v0, v4

    .line 169
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 172
    :cond_2
    :goto_0
    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/twitter/android/media/stickers/m;->b(F)V

    .line 173
    div-float v1, v0, v4

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/m;->b()F

    move-result v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/android/media/stickers/m;->a(FFF)V

    .line 174
    return-void

    .line 169
    :cond_3
    sub-float v0, v4, v1

    div-float/2addr v0, v4

    .line 170
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public a(FFF)V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/twitter/android/media/stickers/m;->b:F

    div-float v1, p1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/media/stickers/m;->b:F

    .line 115
    iget v0, p0, Lcom/twitter/android/media/stickers/m;->c:F

    div-float v1, p2, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/media/stickers/m;->c:F

    .line 116
    return-void
.end method

.method public a(FIFLcom/twitter/util/math/c;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 189
    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/m;->b(F)V

    .line 190
    neg-int v0, p2

    invoke-static {v0}, Lcom/twitter/util/ui/r;->a(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/twitter/android/media/stickers/m;->e:F

    .line 194
    invoke-static {p2}, Lcom/twitter/util/ui/r;->a(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 211
    iget v0, p4, Lcom/twitter/util/math/c;->d:F

    iget v1, p4, Lcom/twitter/util/math/c;->f:F

    add-float/2addr v0, v1

    div-float v1, v0, v3

    .line 212
    iget v0, p4, Lcom/twitter/util/math/c;->e:F

    iget v2, p4, Lcom/twitter/util/math/c;->g:F

    add-float/2addr v0, v2

    mul-float v2, p3, v3

    div-float/2addr v0, v2

    .line 216
    :goto_0
    div-float v2, p1, v3

    .line 217
    sub-float/2addr v1, v2

    iput v1, p0, Lcom/twitter/android/media/stickers/m;->b:F

    .line 218
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/m;->b()F

    move-result v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/media/stickers/m;->c:F

    .line 219
    return-void

    .line 196
    :sswitch_0
    iget v0, p4, Lcom/twitter/util/math/c;->e:F

    iget v1, p4, Lcom/twitter/util/math/c;->g:F

    add-float/2addr v0, v1

    div-float v1, v0, v3

    .line 197
    iget v0, p4, Lcom/twitter/util/math/c;->d:F

    iget v2, p4, Lcom/twitter/util/math/c;->f:F

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    sub-float v0, v4, v0

    div-float/2addr v0, p3

    .line 198
    goto :goto_0

    .line 201
    :sswitch_1
    iget v0, p4, Lcom/twitter/util/math/c;->d:F

    iget v1, p4, Lcom/twitter/util/math/c;->f:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    sub-float v1, v4, v0

    .line 202
    iget v0, p4, Lcom/twitter/util/math/c;->e:F

    iget v2, p4, Lcom/twitter/util/math/c;->g:F

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    sub-float v0, v4, v0

    div-float/2addr v0, p3

    .line 203
    goto :goto_0

    .line 206
    :sswitch_2
    iget v0, p4, Lcom/twitter/util/math/c;->e:F

    iget v1, p4, Lcom/twitter/util/math/c;->g:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    sub-float v1, v4, v0

    .line 207
    iget v0, p4, Lcom/twitter/util/math/c;->d:F

    iget v2, p4, Lcom/twitter/util/math/c;->f:F

    add-float/2addr v0, v2

    mul-float v2, p3, v3

    div-float/2addr v0, v2

    .line 208
    goto :goto_0

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public b()F
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/android/media/stickers/m;->a:Lcpf;

    iget-object v0, v0, Lcpf;->j:Lcpu;

    iget v0, v0, Lcpu;->b:F

    return v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/twitter/android/media/stickers/m;->d:F

    .line 159
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/twitter/android/media/stickers/m;->e:F

    return v0
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/twitter/android/media/stickers/m;->e:F

    .line 178
    return-void
.end method

.method public d()Lcps;
    .locals 5

    .prologue
    .line 223
    new-instance v0, Lcps;

    iget v1, p0, Lcom/twitter/android/media/stickers/m;->d:F

    iget v2, p0, Lcom/twitter/android/media/stickers/m;->e:F

    iget v3, p0, Lcom/twitter/android/media/stickers/m;->b:F

    iget v4, p0, Lcom/twitter/android/media/stickers/m;->c:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcps;-><init>(FFFF)V

    return-object v0
.end method
